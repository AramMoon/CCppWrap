// CppItem.h

#include <string>
#include <iostream>


class CppItem {
public:
    CppItem();							// 생성자
    CppItem(const std::string &text);				// 변수를 입력 받는 생성자
    ~CppItem();							// 소멸자(Destructor)

public:

    void setText(const std::string &text);			// m_text의 getter & setter
    const std::string &getText();
    
    void setNumber(const int number);				// m_number의 getter & setter
    int getNumber();

private:
    std::string m_text;						// 문자열 변수
    int m_number;						// 정수값 변수
};
