{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module Syntax.Normal.Par
  ( happyError
  , myLexer
  , pListExpr1
  , pExpr1
  , pExpr
  , pExpr2
  , pExpr3
  ) where

import Prelude

import qualified Syntax.Normal.Abs
import Syntax.Normal.Lex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
newtype HappyWrap8 = HappyWrap8 (Syntax.Normal.Abs.Ident)
happyIn8 :: (Syntax.Normal.Abs.Ident) -> (HappyAbsSyn )
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap8 x)
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn ) -> HappyWrap8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
newtype HappyWrap9 = HappyWrap9 (Integer)
happyIn9 :: (Integer) -> (HappyAbsSyn )
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap9 x)
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn ) -> HappyWrap9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
newtype HappyWrap10 = HappyWrap10 ([Syntax.Normal.Abs.Expr])
happyIn10 :: ([Syntax.Normal.Abs.Expr]) -> (HappyAbsSyn )
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap10 x)
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn ) -> HappyWrap10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
newtype HappyWrap11 = HappyWrap11 (Syntax.Normal.Abs.Expr)
happyIn11 :: (Syntax.Normal.Abs.Expr) -> (HappyAbsSyn )
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap11 x)
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn ) -> HappyWrap11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
newtype HappyWrap12 = HappyWrap12 (Syntax.Normal.Abs.Expr)
happyIn12 :: (Syntax.Normal.Abs.Expr) -> (HappyAbsSyn )
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap12 x)
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn ) -> HappyWrap12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
newtype HappyWrap13 = HappyWrap13 (Syntax.Normal.Abs.Expr)
happyIn13 :: (Syntax.Normal.Abs.Expr) -> (HappyAbsSyn )
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap13 x)
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn ) -> HappyWrap13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
newtype HappyWrap14 = HappyWrap14 (Syntax.Normal.Abs.Expr)
happyIn14 :: (Syntax.Normal.Abs.Expr) -> (HappyAbsSyn )
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap14 x)
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn ) -> HappyWrap14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x40\xd0\xaf\x0c\x00\x08\xfa\x95\x01\x00\x41\xff\x32\x00\x20\x28\x55\x06\x00\x04\x04\xc8\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x41\xff\x32\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x40\x80\x0c\x00\x08\x08\x90\x01\x00\x01\x01\x32\x00\x20\x20\x40\x06\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x08\x4a\x95\x01\x00\x00\x00\x10\x00\x20\xe8\x57\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x82\x7e\x65\x00\x00\x02\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00\x04\x00\x00\x00\x04\xfd\xca\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x20\xe8\x57\x06\x00\x20\x00\x00\x00\x00\x00\x00\x02\x00\x10\x94\x2a\x03\x00\x00\x00\x08\x00\x40\xd0\xbf\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xe8\x5f\x06\x00\x00\x02\x00\x00\x80\xa0\x7f\x19\x00\x10\xf4\x2f\x03\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x20\x28\x55\x06\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pListExpr1","%start_pExpr1","%start_pExpr","%start_pExpr2","%start_pExpr3","Ident","Integer","ListExpr1","Expr1","Expr","Expr2","Expr3","'('","')'","','","';'","'='","'=>'","'apply'","'else'","'false'","'function'","'if'","'iszero'","'macro'","'pred'","'print'","'succ'","'then'","'true'","'{'","'}'","L_Ident","L_integ","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x11\x00\x11\x00\x01\x00\x21\x00\x23\x00\xec\xff\x00\x00\x00\x00\x00\x00\xee\xff\x01\x00\x00\x00\x00\x00\x00\x00\xee\xff\x00\x00\x23\x00\x23\x00\x23\x00\x23\x00\x02\x00\x00\x00\xef\xff\x00\x00\xff\xff\x21\x00\xff\xff\x11\x00\xfe\xff\xfe\xff\x16\x00\x11\x00\x1c\x00\x1f\x00\x18\x00\x25\x00\x11\x00\x00\x00\x00\x00\x00\x00\x2d\x00\x2e\x00\x00\x00\x11\x00\x30\x00\x2b\x00\x21\x00\x37\x00\x01\x00\x00\x00\x00\x00\x01\x00\x2a\x00\x01\x00\x01\x00\x51\x00\x00\x00\x00\x00\x2f\x00\x21\x00\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x3a\x00\x79\x00\x41\x00\x8e\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x48\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x00\xa2\x00\xa4\x00\xab\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x00\x90\x00\x66\x00\x80\x00\x00\x00\x00\x00\x00\x00\x4f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x87\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x56\x00\x00\x00\x00\x00\x97\x00\x00\x00\x5d\x00\x00\x00\x00\x00\x64\x00\x00\x00\x6b\x00\x72\x00\x00\x00\x00\x00\x00\x00\x00\x00\x99\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xf8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfa\xff\xe6\xff\xe7\xff\x00\x00\x00\x00\xe8\xff\xe9\xff\xf9\xff\x00\x00\xea\xff\x00\x00\x00\x00\x00\x00\x00\x00\xe6\xff\xef\xff\x00\x00\xf2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf7\xff\xf8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xed\xff\xec\xff\xeb\xff\x00\x00\x00\x00\xe5\xff\xf8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf6\xff\xf1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xee\xff\xf0\xff\x00\x00\x00\x00\x00\x00\xf3\xff\xf5\xff\xf4\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x15\x00\x01\x00\x00\x00\x01\x00\x17\x00\x17\x00\x05\x00\x07\x00\x06\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x01\x00\x12\x00\x15\x00\x17\x00\x15\x00\x16\x00\x07\x00\x03\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x04\x00\x10\x00\x01\x00\x12\x00\x01\x00\x06\x00\x15\x00\x16\x00\x07\x00\x11\x00\x09\x00\x06\x00\x09\x00\x0c\x00\x01\x00\x0e\x00\x02\x00\x10\x00\x08\x00\x12\x00\x04\x00\x12\x00\x15\x00\x16\x00\x15\x00\x16\x00\x00\x00\x01\x00\x02\x00\x03\x00\x13\x00\x05\x00\x06\x00\x00\x00\x01\x00\x14\x00\x03\x00\x04\x00\x05\x00\x06\x00\x00\x00\x01\x00\x13\x00\x03\x00\x04\x00\x05\x00\x06\x00\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x05\x00\x06\x00\x00\x00\x01\x00\x02\x00\x03\x00\x14\x00\x05\x00\x06\x00\x00\x00\x01\x00\x00\x00\x03\x00\x04\x00\x05\x00\x06\x00\x00\x00\x01\x00\x00\x00\x03\x00\x04\x00\x05\x00\x06\x00\x00\x00\x01\x00\xff\xff\x03\x00\x04\x00\x05\x00\x06\x00\x00\x00\x01\x00\xff\xff\x03\x00\x04\x00\x05\x00\x06\x00\x00\x00\x01\x00\xff\xff\x03\x00\xff\xff\x05\x00\x06\x00\x00\x00\x01\x00\xff\xff\x03\x00\xff\xff\x05\x00\x06\x00\x00\x00\x01\x00\xff\xff\x03\x00\xff\xff\x05\x00\x06\x00\x00\x00\x01\x00\x00\x00\x01\x00\xff\xff\x05\x00\x06\x00\x05\x00\x06\x00\x00\x00\x01\x00\x00\x00\x01\x00\xff\xff\x05\x00\x06\x00\x05\x00\x06\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x06\x00\xff\xff\x06\x00\xff\xff\x06\x00\x00\x00\x01\x00\xff\xff\xff\xff\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x07\x00\x0b\x00\x07\x00\x08\x00\xff\xff\xff\xff\x25\x00\x11\x00\x09\x00\x0c\x00\x19\x00\x1a\x00\x12\x00\x1b\x00\x13\x00\x1c\x00\x14\x00\x0b\x00\x0d\x00\x07\x00\xff\xff\x07\x00\x0e\x00\x11\x00\x20\x00\x0c\x00\x19\x00\x1a\x00\x12\x00\x1b\x00\x13\x00\x31\x00\x14\x00\x0b\x00\x0d\x00\x0b\x00\x30\x00\x07\x00\x0e\x00\x11\x00\x2f\x00\x0c\x00\x2e\x00\x0c\x00\x12\x00\x2c\x00\x13\x00\x2b\x00\x14\x00\x3c\x00\x0d\x00\x37\x00\x0d\x00\x07\x00\x0e\x00\x07\x00\x0e\x00\x07\x00\x08\x00\x1d\x00\x1e\x00\x36\x00\x17\x00\x0f\x00\x14\x00\x08\x00\x40\x00\x15\x00\x16\x00\x17\x00\x0f\x00\x14\x00\x08\x00\x34\x00\x15\x00\x29\x00\x17\x00\x0f\x00\x07\x00\x08\x00\x31\x00\x1e\x00\x39\x00\x17\x00\x0f\x00\x07\x00\x08\x00\x37\x00\x1e\x00\x3e\x00\x17\x00\x0f\x00\x14\x00\x08\x00\x23\x00\x15\x00\x32\x00\x17\x00\x0f\x00\x14\x00\x08\x00\x21\x00\x15\x00\x3c\x00\x17\x00\x0f\x00\x14\x00\x08\x00\x00\x00\x15\x00\x3a\x00\x17\x00\x0f\x00\x14\x00\x08\x00\x00\x00\x15\x00\x39\x00\x17\x00\x0f\x00\x07\x00\x08\x00\x00\x00\x1c\x00\x00\x00\x17\x00\x0f\x00\x07\x00\x08\x00\x00\x00\x20\x00\x00\x00\x17\x00\x0f\x00\x07\x00\x08\x00\x00\x00\x2c\x00\x00\x00\x17\x00\x0f\x00\x07\x00\x08\x00\x07\x00\x08\x00\x00\x00\x0e\x00\x0f\x00\x22\x00\x0f\x00\x07\x00\x08\x00\x07\x00\x08\x00\x00\x00\x34\x00\x0f\x00\x3e\x00\x0f\x00\x07\x00\x08\x00\x07\x00\x08\x00\x07\x00\x08\x00\x28\x00\x00\x00\x27\x00\x00\x00\x26\x00\x07\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (5, 26) [
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26)
	]

happy_n_terms = 24 :: Prelude.Int
happy_n_nonterms = 7 :: Prelude.Int

happyReduce_5 = happySpecReduce_1  0# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn8
		 (Syntax.Normal.Abs.Ident happy_var_1
	)}

happyReduce_6 = happySpecReduce_1  1# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn9
		 ((read happy_var_1) :: Integer
	)}

happyReduce_7 = happySpecReduce_0  2# happyReduction_7
happyReduction_7  =  happyIn10
		 ([]
	)

happyReduce_8 = happySpecReduce_1  2# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut11 happy_x_1 of { (HappyWrap11 happy_var_1) -> 
	happyIn10
		 ((:[]) happy_var_1
	)}

happyReduce_9 = happySpecReduce_3  2# happyReduction_9
happyReduction_9 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { (HappyWrap11 happy_var_1) -> 
	case happyOut10 happy_x_3 of { (HappyWrap10 happy_var_3) -> 
	happyIn10
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_10 = happyReduce 6# 3# happyReduction_10
happyReduction_10 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut13 happy_x_2 of { (HappyWrap13 happy_var_2) -> 
	case happyOut13 happy_x_4 of { (HappyWrap13 happy_var_4) -> 
	case happyOut13 happy_x_6 of { (HappyWrap13 happy_var_6) -> 
	happyIn11
		 (Syntax.Normal.Abs.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_11 = happyReduce 6# 3# happyReduction_11
happyReduction_11 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_2 of { (HappyWrap8 happy_var_2) -> 
	case happyOut12 happy_x_5 of { (HappyWrap12 happy_var_5) -> 
	happyIn11
		 (Syntax.Normal.Abs.Abstraction happy_var_2 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_12 = happyReduce 6# 3# happyReduction_12
happyReduction_12 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_2 of { (HappyWrap8 happy_var_2) -> 
	case happyOut12 happy_x_5 of { (HappyWrap12 happy_var_5) -> 
	happyIn11
		 (Syntax.Normal.Abs.LazyAbstraction happy_var_2 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_13 = happySpecReduce_1  3# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOut13 happy_x_1 of { (HappyWrap13 happy_var_1) -> 
	happyIn11
		 (happy_var_1
	)}

happyReduce_14 = happyReduce 4# 4# happyReduction_14
happyReduction_14 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { (HappyWrap11 happy_var_2) -> 
	case happyOut12 happy_x_4 of { (HappyWrap12 happy_var_4) -> 
	happyIn12
		 (Syntax.Normal.Abs.Print happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_15 = happyReduce 5# 4# happyReduction_15
happyReduction_15 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_1 of { (HappyWrap8 happy_var_1) -> 
	case happyOut11 happy_x_3 of { (HappyWrap11 happy_var_3) -> 
	case happyOut12 happy_x_5 of { (HappyWrap12 happy_var_5) -> 
	happyIn12
		 (Syntax.Normal.Abs.Assignment happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_16 = happySpecReduce_1  4# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut11 happy_x_1 of { (HappyWrap11 happy_var_1) -> 
	happyIn12
		 (happy_var_1
	)}

happyReduce_17 = happyReduce 5# 5# happyReduction_17
happyReduction_17 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut14 happy_x_2 of { (HappyWrap14 happy_var_2) -> 
	case happyOut10 happy_x_4 of { (HappyWrap10 happy_var_4) -> 
	happyIn13
		 (Syntax.Normal.Abs.Application happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_18 = happySpecReduce_2  5# happyReduction_18
happyReduction_18 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { (HappyWrap14 happy_var_2) -> 
	happyIn13
		 (Syntax.Normal.Abs.Succ happy_var_2
	)}

happyReduce_19 = happySpecReduce_2  5# happyReduction_19
happyReduction_19 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { (HappyWrap14 happy_var_2) -> 
	happyIn13
		 (Syntax.Normal.Abs.Pred happy_var_2
	)}

happyReduce_20 = happySpecReduce_2  5# happyReduction_20
happyReduction_20 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { (HappyWrap14 happy_var_2) -> 
	happyIn13
		 (Syntax.Normal.Abs.IsZero happy_var_2
	)}

happyReduce_21 = happySpecReduce_1  5# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOut14 happy_x_1 of { (HappyWrap14 happy_var_1) -> 
	happyIn13
		 (happy_var_1
	)}

happyReduce_22 = happySpecReduce_1  6# happyReduction_22
happyReduction_22 happy_x_1
	 =  happyIn14
		 (Syntax.Normal.Abs.ConstTrue
	)

happyReduce_23 = happySpecReduce_1  6# happyReduction_23
happyReduction_23 happy_x_1
	 =  happyIn14
		 (Syntax.Normal.Abs.ConstFalse
	)

happyReduce_24 = happySpecReduce_1  6# happyReduction_24
happyReduction_24 happy_x_1
	 =  case happyOut9 happy_x_1 of { (HappyWrap9 happy_var_1) -> 
	happyIn14
		 (Syntax.Normal.Abs.ConstInteger happy_var_1
	)}

happyReduce_25 = happySpecReduce_1  6# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOut8 happy_x_1 of { (HappyWrap8 happy_var_1) -> 
	happyIn14
		 (Syntax.Normal.Abs.Var happy_var_1
	)}

happyReduce_26 = happySpecReduce_3  6# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { (HappyWrap12 happy_var_2) -> 
	happyIn14
		 (happy_var_2
	)}

happyNewToken action sts stk [] =
	happyDoAction 23# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TV happy_dollar_dollar) -> cont 21#;
	PT _ (TI happy_dollar_dollar) -> cont 22#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 23# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = ((>>=))
happyReturn :: () => a -> Err a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Err a
happyError' = (\(tokens, _) -> happyError tokens)
pListExpr1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {(HappyWrap10 x') = happyOut10 x} in x'))

pExpr1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (let {(HappyWrap11 x') = happyOut11 x} in x'))

pExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (let {(HappyWrap12 x') = happyOut12 x} in x'))

pExpr2 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (let {(HappyWrap13 x') = happyOut13 x} in x'))

pExpr3 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (let {(HappyWrap14 x') = happyOut14 x} in x'))

happySeq = happyDontSeq


type Err = Either String

happyError :: [Token] -> Err a
happyError ts = Left $
  "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ (prToken t) ++ "'"

myLexer :: String -> [Token]
myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Prelude.Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Prelude.Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Prelude.Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



















data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Prelude.Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else Prelude.False
         action
          | check     = indexShortOffAddr happyTable off_i
          | Prelude.otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `Prelude.mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)













-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ((Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
