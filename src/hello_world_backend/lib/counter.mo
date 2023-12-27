import Int "mo:base/Int";
import Prim "mo:prim";

module {
  public let totalMint: Int = 0;
  
  public func increaseCounter(size : Int): Int {
    return totalMint + 2
  };

};