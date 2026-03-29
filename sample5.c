void test_extras(void) {
    int h = 0xFF;        // HEX_NUM
    int o = 0755;        // OCT_NUM
    int logic = (1 && 0) || !1; // AND_OP, OR_OP, NOT_OP
    
    float f1 = .5;       // FLOAT_NUM (點在前面)
    float f2 = 10.;      // FLOAT_NUM (點在後面)
    
    char c = '\n';       // CHAR_VAL (含轉義字元)
    char* s = "Hello Compiler\t"; // STRING_VAL
}
