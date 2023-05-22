#include <iostream>
#include <vector>
#include "ScoreNatural.cpp"
#include "ScoreSocial.cpp"

int main() {
    // Tạo các đối tượng ScoreNatural và ScoreSocial
    ScoreNatural student1(9.5, 8.0, 7.5, 9.0, 8.5, 7.0);
    ScoreNatural student2(8.0, 7.5, 6.5, 8.5, 7.0, 6.0);

    ScoreSocial student3(9.0, 8.5, 7.5, 8.0, 7.5, 8.5);
    ScoreSocial student4(7.5, 8.0, 6.5, 7.0, 6.5, 7.0);

    // Tạo vector chứa các đối tượng Score
    std::vector<Score*> scores;
    scores.push_back(&student1);
    scores.push_back(&student2);
    scores.push_back(&student3);
    scores.push_back(&student4);

    // Hiển thị thông tin và kết quả của từng đối tượng
    for (Score* score : scores) {
        score->display();
        std::cout << "Math: " << score->getMath() << std::endl;
        std::cout << "Literature: " << score->getLiterature() << std::endl;
        std::cout << "English: " << score->getEnglish() << std::endl;

        // Kiểm tra xem đối tượng có đạt hay không
        if (score->isPass()) {
            std::cout << "Pass" << std::endl;
        } else {
            std::cout << "Fail" << std::endl;
        }

        std::cout << std::endl;
    }

    // Tìm điểm trung bình cao nhất và thấp nhất trong danh sách
    double maxAvg = Score::getMaxAvg(scores);
    double minAvg = Score::getMinAvg(scores);

    std::cout << "Max Average: " << maxAvg << std::endl;
    std::cout << "Min Average: " << minAvg << std::endl;

    // Tìm điểm cao nhất của từng điểm trên (PointA, PointB, PointC, PointD)
    double maxPointA = Score::getMaxPointA(scores);
    double maxPointB = Score::getMaxPointB(scores);
    double maxPointC = Score::getMaxPointC(scores);
    double maxPointD = Score::getMaxPointD(scores);

    std::cout << "Max Point A: " << maxPointA << std::endl;
    std::cout << "Max Point B: " << maxPointB << std::endl;
    std::cout << "Max Point C: " << maxPointC << std::endl;
    std::cout << "Max Point D: " << maxPointD << std::endl;

    return 0;
}
