void main() {
    var score = 80;
    print("Nilai kamu ${calculateValue(score)}");
}

String calculateValue(num score) {
    if (score >= 90) {
        return 'A';
    } else if (score >= 80) {
        return 'B';
    } else if (score >= 70) {
        return 'C';
    }  else if (score >= 60) {
        return 'C-';
    } else {
        return 'D';
    }
}
