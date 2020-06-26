//
// Created by 张小白 on 2020/6/25.
//
#pragma once
#ifndef COVID_CPP_COMPONENTS_H
#define COVID_CPP_COMPONENTS_H

#include <SFML/Graphics.hpp>
#include <cmath>


struct Status {
    bool isAlive;
    bool isInfected;
    bool isTraveling;
    bool isDistKept;
};

struct ColorStuff {
    sf::Color bodyColor;
    sf::Color circleColor;
};


#endif //COVID_CPP_COMPONENTS_H
