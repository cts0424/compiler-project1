int complex_math(int a, int b) {
    int result;
    result = (a + b) % (a / b); // PERCENT, DIV, PAREN
    
    // 測試識別碼中包含底線
    int _temp_val_123 = 99; 
    
    if (a != b && a <= b || a >= b) { // NE_OP, LE_OP, GE_OP
        return -1; // SUB 處理一元負號 [cite: 15]
    }
    
    return result;
}
