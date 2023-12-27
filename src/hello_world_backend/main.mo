import Int "mo:base/Int";
import Prim "mo:prim";

actor {

  stable var lastCaller: Text = "";
  stable var calls: Int = 0;
  stable var names: [Text] = [];

  public func greet(name : Text) : async Text {
    lastCaller := name;
    calls += 1;
    return "Hello, " # name # "!";
  };

  public func getCalls(): async Int {
    return calls;
  };

  public func getLastCaller(): async Text {
    return lastCaller;
  };

  public func getGreaterValue(num1: Int, num2: Int): async Int {
    return Int.max(num1, num2);
  };

  public func toLowerCase(text: Text): async Text {
    return Prim.textLowercase(text)
  }
};
