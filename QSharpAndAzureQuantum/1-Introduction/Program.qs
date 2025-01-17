﻿namespace Introduction
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    
    @EntryPoint()
    operation HelloQ() : Unit
    {
        use (q1, q2) = (Qubit(), Qubit());

        X(q2);

        let b1 = M(q1);
        let b2 = M(q2);

        Message($"{BoolAsString(b1 == One)}, {BoolAsString(b2 == One)}");

        Reset(q1);
        Reset(q2);
    }
}