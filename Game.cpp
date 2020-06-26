//
// Created by 张小白 on 2020/6/25.
//

#include "Game.h"


Game* Game::m_instance = nullptr;

Game *Game::getInstance() {
    if (m_instance == nullptr)
        m_instance = new Game();
    return m_instance;
}

void Game::events() {
    while (m_window.pollEvent(m_event))
    {
        if (m_event.type == sf::Event::Closed)
            m_isRunning = false;
        if (m_event.type == sf::Event::KeyPressed) {
            if (m_event.key.code == sf::Keyboard::Escape)
                m_isRunning = false;
            if (m_event.key.code == sf::Keyboard::Enter) {
                m_clock.restart();
                m_isPaused = not m_isPaused;
            }
        }
    }
}

void Game::update_and_draw() {
    dt = m_clock.restart().asSeconds();
    m_window.clear(sf::Color::White);
    for (Entity& _entity : entities) {
        _entity.statusUpdate(this->entities);
    }
    for (Entity& _entity : entities) {
        _entity.update(m_window, this->dt);
    }
    m_window.display();
}

void Game::run() {
    this->initDraw();
    while (m_isRunning) {
        events();
        if (not m_isPaused)
            update_and_draw();
    }
    m_window.close();
}

Game::Game() {
    m_window.create(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT),
                    "Coronavirus Simulation", sf::Style::Default);
    m_isRunning = true;
    m_isPaused = true;
    dt = 0.0f;
    entities.clear();
    randNumGenerator.seed(7);
    entitiesInit();
}

void Game::entitiesInit(int popNum) {
    std::uniform_real_distribution<float> _generator_x(0, WINDOW_WIDTH);
    std::uniform_real_distribution<float> _generator_y(0, WINDOW_HEIGHT);
    std::uniform_real_distribution<float> _generator_initial_infection(0, 1);
    for (int i = 0; i < popNum; i++) {
        auto _pos_x = _generator_x(randNumGenerator);
        auto _pos_y = _generator_y(randNumGenerator);
        Entity _entity = Entity(i);
        _entity.image.setPosition(_pos_x, _pos_y);
        if (_generator_initial_infection(randNumGenerator) <= INITIAL_INFECTION_CHANCE) {
            _entity.status.isInfected = true;
            _entity.image.setFillColor(sf::Color::Red);
        }
        entities.push_back(_entity);
    }
}

void Game::initDraw() {
    this->m_window.clear(sf::Color::White);
    for (Entity& _entity : this->entities) {
        this->m_window.draw(_entity.image);
        if (_entity.status.isInfected) {
            sf::CircleShape _circle(INFECTION_RADIUS);
            _circle.setOrigin(INFECTION_RADIUS, INFECTION_RADIUS);
            _circle.setPosition(_entity.image.getPosition());
            _circle.setFillColor(sf::Color::Transparent);
            _circle.setOutlineThickness(1.0);
            if (_entity.status.isDistKept)
                _circle.setOutlineColor(sf::Color::Blue);
            else
                _circle.setOutlineColor(sf::Color::Red);
            this->m_window.draw(_circle);
        }
    }
    this->m_window.display();
}
