//
// Created by 张小白 on 2020/6/25.
//
#pragma once
#ifndef COVID_CPP_GAME_H
#define COVID_CPP_GAME_H


#include <SFML/Graphics.hpp>
#include <random>
#include <vector>
#include "Settings.h"
#include "Entity.h"


class Game {
public:
    static Game* getInstance();
    void events();
    void update_and_draw();
    void run();

    void entitiesInit(int popNum = POPULATION_NUM);

    std::vector<Entity> entities;

private:
    Game();
    ~Game() {delete m_instance;}
    void initDraw();
    static Game* m_instance;
    sf::RenderWindow m_window;
    sf::Event m_event;
    bool m_isRunning;
    bool m_isPaused;
    std::default_random_engine randNumGenerator;
    sf::Clock m_clock;
    float dt;
};


#endif //COVID_CPP_GAME_H
