//
// Created by 张小白 on 2020/6/25.
//

#include "Entity.h"
#include <iostream>

sf::Vector2f getNormalVector(sf::Vector2f vec);
float getDist(sf::Vector2f pos1, sf::Vector2f pos2);

Entity::Entity(int id) {
    image.setRadius(ENTITY_BODY_RADIUS);
    image.setFillColor(sf::Color::Black);
    image.setOrigin(ENTITY_BODY_RADIUS, ENTITY_BODY_RADIUS);
    image.setPosition(WINDOW_WIDTH / 2.0, WINDOW_HEIGHT / 2.0);
    walkDirection = sf::Vector2f(1.0f, 0.0f);
    walkSpeed = ENTITY_WALK_SPEED;
    status.isAlive = true;
    status.isInfected = false;
    status.isTraveling = false;
    status.isDistKept = true;
    this->id = id;
    this->randomEngine.seed(id);
}

void Entity::update(sf::RenderWindow& window, float dt) {
    this->walk(dt);
    ColorStuff _color = getDrawColor();
    sf::Color _bodyColor = _color.bodyColor;
    sf::Color _circleColor = _color.circleColor;
    this->image.setFillColor(_bodyColor);
    window.draw(this->image);
    drawCircle(_circleColor, window);
}

int Entity::getID() const {
    return this->id;
}

ColorStuff &Entity::getDrawColor() {
    ColorStuff res;
    res.bodyColor = sf::Color::Black;
    res.circleColor = sf::Color::Red;

    if (this->status.isInfected) {
        res.bodyColor = res.circleColor = sf::Color::Red;
    }
    if (this->status.isDistKept) {
        if (!this->status.isInfected)
            res.bodyColor = sf::Color::Blue;
        res.circleColor = sf::Color::Blue;
    }
    if (this->status.isTraveling) {
        res.bodyColor = res.circleColor = sf::Color::Green;
    }
    return res;
}

void Entity::drawCircle(sf::Color color, sf::RenderWindow &win) {
    if (this->status.isInfected) {
        sf::CircleShape _circle(INFECTION_RADIUS);
        _circle.setOrigin(INFECTION_RADIUS, INFECTION_RADIUS);
        _circle.setPosition(this->image.getPosition());
        _circle.setFillColor(sf::Color::Transparent);
        _circle.setOutlineThickness(1.0);
        _circle.setOutlineColor(color);
        win.draw(_circle);
    }
}

void Entity::getWalkDirection() {
    std::normal_distribution<float> _normal(10, 5);
    std::uniform_real_distribution<float> _factor(-1, 1);
    float _direction_x = abs(_normal(randomEngine));
    float _factor_x = (_factor(randomEngine) > 0.0f)? 1.0f : -1.0f;
    float _direction_y = abs(_normal(randomEngine));
    float _factor_y = (_factor(randomEngine) > 0.0f)? 1.0f : -1.0f;
    sf::Vector2f _newDir = getNormalVector(sf::Vector2f(_direction_x * _factor_x, _direction_y * _factor_y));
    _newDir = getNormalVector(_newDir + this->walkDirection);
    this->walkDirection = _newDir;
}

void Entity::walk(float dt) {
    assert(!isnan(this->walkDirection.x));
    if (this->status.isDistKept)
        this->image.move(this->walkDirection * this->walkSpeed * dt * 60.0f * (float)DIST_KEPT_WALK_SPEED_FACTOR);
    else
        this->image.move(this->walkDirection * this->walkSpeed * dt * 60.0f);
    this->posBoundCheck();
}

void Entity::posBoundCheck() {
    if (this->image.getPosition().x < 0)
        this->image.setPosition(WINDOW_WIDTH + this->image.getPosition().x, this->image.getPosition().y);
    if (this->image.getPosition().x > WINDOW_WIDTH)
        this->image.setPosition(this->image.getPosition().x - WINDOW_WIDTH, this->image.getPosition().y);
    if (this->image.getPosition().y < 0)
        this->image.setPosition(this->image.getPosition().x, WINDOW_HEIGHT + this->image.getPosition().y);
    if (this->image.getPosition().y > WINDOW_HEIGHT)
        this->image.setPosition(this->image.getPosition().x, this->image.getPosition().y - WINDOW_HEIGHT);
}

void Entity::statusUpdate(std::vector<Entity>& pop) {
    this->neighbors.clear();
    for (Entity& _entity : pop) {
        if (this->id == _entity.getID())
            continue;
        sf::Vector2f _distVector = _entity.image.getPosition() - this->image.getPosition();
        float _dist = sqrt(_distVector.x * _distVector.x +
                           _distVector.y * _distVector.y);
        if (_dist <= 1.5f * INFECTION_RADIUS) {
            _distVector = getNormalVector(_distVector);
            if (isnan(_distVector.x) || isnan(_distVector.y))
                continue;
            this->neighbors.push_back(_distVector);
        }
        if (_dist <= INFECTION_RADIUS)
            infectionCheck(_entity.image.getPosition());
    }

    if (this->neighbors.empty() || not this->status.isDistKept) {
        getWalkDirection();
        return;
    }
    sf::Vector2f _resDirect(0.0f, 0.0f);
    for (sf::Vector2f _vec : this->neighbors) {
        _resDirect += _vec;
    }
    _resDirect = -1.0f * getNormalVector(_resDirect);
    _resDirect = _resDirect + this->walkDirection;
    this->walkDirection = getNormalVector(_resDirect);
}

void Entity::infectionCheck(sf::Vector2f pos) {
    std::uniform_real_distribution<float> _randGen(0, 1);
    float _factor = 1.0f - pow(getDist(this->image.getPosition(), pos), 2.0f);
    if (_randGen(this->randomEngine) <= INFECTION_CHANCE * _factor)
        this->status.isInfected = true;
}

sf::Vector2f getNormalVector(sf::Vector2f vec) {
    float _mod = sqrt(pow(vec.x, 2.0f) + pow(vec.y, 2.0f));
    return vec / _mod;
}

float getDist(sf::Vector2f pos1, sf::Vector2f pos2) {
    return sqrt(pow(pos1.x - pos1.x, 2.0f) + pow(pos1.y - pos2.y, 2.0f));
}