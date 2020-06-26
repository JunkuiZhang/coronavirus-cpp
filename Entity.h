//
// Created by 张小白 on 2020/6/25.
//
#pragma once
#ifndef COVID_CPP_ENTITY_H
#define COVID_CPP_ENTITY_H

#include "Components.h"
#include "Settings.h"
#include <SFML/Graphics.hpp>
#include <random>
#include <cmath>


class Entity {
public:
    Entity(int id = -1);
    Status status;
    sf::CircleShape image;

    int getID() const;

    void update(sf::RenderWindow& window, float dt);
    void statusUpdate(std::vector<Entity>& pop);
    std::vector<sf::Vector2f> neighbors;

private:
    sf::Vector2f walkDirection;
    float walkSpeed;
    int id;
    ColorStuff& getDrawColor();
    void drawCircle(sf::Color color, sf::RenderWindow& win);
    void getWalkDirection();
    void walk(float dt);
    void posBoundCheck();
    void infectionCheck(sf::Vector2f pos);
    std::default_random_engine randomEngine;
};


#endif //COVID_CPP_ENTITY_H
