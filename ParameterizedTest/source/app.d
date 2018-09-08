import std.format;

class DiffTests
{
    struct TestCase
    {
        string expected;
        string actual;
    }


    static void testDiff()
    {
        TestCase[uint] testCases = [
            __LINE__: TestCase(
                "I'm not changed.",
                "I'm changed."
                )];

        foreach (line, testCase; testCases)
        {
            assert(testCase.expected == testCase.actual,
                   format("failed at line %d: expected is %s, but actual %s",
                          line, testCase.expected, testCase.actual));
        }
    }
}

unittest
{
    DiffTests.testDiff();
}

void main(){}
