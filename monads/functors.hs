module Functor where

data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
  fmap f (Point3D x1 x2 x3) = Point3D (f x1) (f x2) (f x3)


-- ******************************* --

data GeomPrimitive a
    = Point (Point3D a)
    | LineSegment (Point3D a) (Point3D a)
    deriving Show

instance Functor GeomPrimitive where
  fmap f (Point p) = Point (fmap f p)
  fmap f (LineSegment p1 p2) = LineSegment (fmap f p1) (fmap f p2)