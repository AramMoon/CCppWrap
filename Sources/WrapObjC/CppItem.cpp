//  CppItem.cpp

#include "CppItem.h"

CppItem::CppItem():m_text() {}
CppItem::CppItem(const std::string &text): m_text(text) {}
CppItem::~CppItem() {}

void CppItem::setText(const std::string &text)
{
    m_text = text;
}
const std::string &CppItem::getText()
{
    return m_text;
}

void CppItem::setNumber(const int number)
{
    m_number = number;
}

int CppItem::getNumber()
{
    return m_number;
}
