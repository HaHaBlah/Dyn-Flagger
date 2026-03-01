var __defProp = Object.defineProperty;
var __name = (target, value) => __defProp(target, "name", { value, configurable: true });

// .wrangler/tmp/pages-bGx89D/functionsWorker-0.16254728101408666.mjs
var __create = Object.create;
var __defProp2 = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __getProtoOf = Object.getPrototypeOf;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __name2 = /* @__PURE__ */ __name((target, value) => __defProp2(target, "name", { value, configurable: true }), "__name");
var __esm = /* @__PURE__ */ __name((fn, res) => /* @__PURE__ */ __name(function __init() {
  return fn && (res = (0, fn[__getOwnPropNames(fn)[0]])(fn = 0)), res;
}, "__init"), "__esm");
var __commonJS = /* @__PURE__ */ __name((cb, mod) => /* @__PURE__ */ __name(function __require() {
  return mod || (0, cb[__getOwnPropNames(cb)[0]])((mod = { exports: {} }).exports, mod), mod.exports;
}, "__require"), "__commonJS");
var __copyProps = /* @__PURE__ */ __name((to, from, except, desc) => {
  if (from && typeof from === "object" || typeof from === "function") {
    for (let key of __getOwnPropNames(from))
      if (!__hasOwnProp.call(to, key) && key !== except)
        __defProp2(to, key, { get: /* @__PURE__ */ __name(() => from[key], "get"), enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
  }
  return to;
}, "__copyProps");
var __toESM = /* @__PURE__ */ __name((mod, isNodeMode, target) => (target = mod != null ? __create(__getProtoOf(mod)) : {}, __copyProps(
  // If the importer is in node compatibility mode or this is not an ESM
  // file that has been converted to a CommonJS file using a Babel-
  // compatible transform (i.e. "__esModule" has not been set), then set
  // "default" to the CommonJS "module.exports" for node compatibility.
  isNodeMode || !mod || !mod.__esModule ? __defProp2(target, "default", { value: mod, enumerable: true }) : target,
  mod
)), "__toESM");
var require_luaparse = __commonJS({
  "../node_modules/luaparse/luaparse.js"(exports, module) {
    init_functionsRoutes_0_27951557217036604();
    (function(root, name, factory) {
      "use strict";
      var objectTypes = {
        "function": true,
        "object": true
      }, freeExports = objectTypes[typeof exports] && exports && !exports.nodeType && exports, freeModule = objectTypes[typeof module] && module && !module.nodeType && module, freeGlobal = freeExports && freeModule && typeof global === "object" && global, moduleExports = freeModule && freeModule.exports === freeExports && freeExports;
      if (freeGlobal && (freeGlobal.global === freeGlobal || /* istanbul ignore next */
      freeGlobal.window === freeGlobal || /* istanbul ignore next */
      freeGlobal.self === freeGlobal)) {
        root = freeGlobal;
      }
      if (typeof define === "function" && /* istanbul ignore next */
      typeof define.amd === "object" && /* istanbul ignore next */
      define.amd) {
        define(["exports"], factory);
        if (freeExports && moduleExports) factory(freeModule.exports);
      } else if (freeExports && freeModule) {
        if (moduleExports) factory(freeModule.exports);
        else factory(freeExports);
      } else {
        factory(root[name] = {});
      }
    })(exports, "luaparse", function(exports2) {
      "use strict";
      exports2.version = "0.3.1";
      var input, options, length, features, encodingMode;
      var defaultOptions = exports2.defaultOptions = {
        // Explicitly tell the parser when the input ends.
        wait: false,
        comments: true,
        scope: false,
        locations: false,
        ranges: false,
        onCreateNode: null,
        onCreateScope: null,
        onDestroyScope: null,
        onLocalDeclaration: null,
        luaVersion: "5.1",
        encodingMode: "none"
      };
      function encodeUTF8(codepoint, highMask) {
        highMask = highMask || 0;
        if (codepoint < 128) {
          return String.fromCharCode(codepoint);
        } else if (codepoint < 2048) {
          return String.fromCharCode(
            highMask | 192 | codepoint >> 6,
            highMask | 128 | codepoint & 63
          );
        } else if (codepoint < 65536) {
          return String.fromCharCode(
            highMask | 224 | codepoint >> 12,
            highMask | 128 | codepoint >> 6 & 63,
            highMask | 128 | codepoint & 63
          );
        } else if (codepoint < 1114112) {
          return String.fromCharCode(
            highMask | 240 | codepoint >> 18,
            highMask | 128 | codepoint >> 12 & 63,
            highMask | 128 | codepoint >> 6 & 63,
            highMask | 128 | codepoint & 63
          );
        } else {
          return null;
        }
      }
      __name(encodeUTF8, "encodeUTF8");
      __name2(encodeUTF8, "encodeUTF8");
      function toHex(num, digits) {
        var result = num.toString(16);
        while (result.length < digits)
          result = "0" + result;
        return result;
      }
      __name(toHex, "toHex");
      __name2(toHex, "toHex");
      function checkChars(rx) {
        return function(s) {
          var m = rx.exec(s);
          if (!m)
            return s;
          raise(null, errors.invalidCodeUnit, toHex(m[0].charCodeAt(0), 4).toUpperCase());
        };
      }
      __name(checkChars, "checkChars");
      __name2(checkChars, "checkChars");
      var encodingModes = {
        // `pseudo-latin1` encoding mode: assume the input was decoded with the latin1 encoding
        // WARNING: latin1 does **NOT** mean cp1252 here like in the bone-headed WHATWG standard;
        // it means true ISO/IEC 8859-1 identity-mapped to Basic Latin and Latin-1 Supplement blocks
        "pseudo-latin1": {
          fixup: checkChars(/[^\x00-\xff]/),
          encodeByte: /* @__PURE__ */ __name2(function(value) {
            if (value === null)
              return "";
            return String.fromCharCode(value);
          }, "encodeByte"),
          encodeUTF8: /* @__PURE__ */ __name2(function(codepoint) {
            return encodeUTF8(codepoint);
          }, "encodeUTF8")
        },
        // `x-user-defined` encoding mode: assume the input was decoded with the WHATWG `x-user-defined` encoding
        "x-user-defined": {
          fixup: checkChars(/[^\x00-\x7f\uf780-\uf7ff]/),
          encodeByte: /* @__PURE__ */ __name2(function(value) {
            if (value === null)
              return "";
            if (value >= 128)
              return String.fromCharCode(value | 63232);
            return String.fromCharCode(value);
          }, "encodeByte"),
          encodeUTF8: /* @__PURE__ */ __name2(function(codepoint) {
            return encodeUTF8(codepoint, 63232);
          }, "encodeUTF8")
        },
        // `none` encoding mode: disregard intrepretation of string literals, leave identifiers as-is
        "none": {
          discardStrings: true,
          fixup: /* @__PURE__ */ __name2(function(s) {
            return s;
          }, "fixup"),
          encodeByte: /* @__PURE__ */ __name2(function(value) {
            return "";
          }, "encodeByte"),
          encodeUTF8: /* @__PURE__ */ __name2(function(codepoint) {
            return "";
          }, "encodeUTF8")
        }
      };
      var EOF = 1, StringLiteral = 2, Keyword = 4, Identifier = 8, NumericLiteral = 16, Punctuator = 32, BooleanLiteral = 64, NilLiteral = 128, VarargLiteral = 256;
      exports2.tokenTypes = {
        EOF,
        StringLiteral,
        Keyword,
        Identifier,
        NumericLiteral,
        Punctuator,
        BooleanLiteral,
        NilLiteral,
        VarargLiteral
      };
      var errors = exports2.errors = {
        unexpected: "unexpected %1 '%2' near '%3'",
        unexpectedEOF: "unexpected symbol near '<eof>'",
        expected: "'%1' expected near '%2'",
        expectedToken: "%1 expected near '%2'",
        unfinishedString: "unfinished string near '%1'",
        malformedNumber: "malformed number near '%1'",
        decimalEscapeTooLarge: "decimal escape too large near '%1'",
        invalidEscape: "invalid escape sequence near '%1'",
        hexadecimalDigitExpected: "hexadecimal digit expected near '%1'",
        braceExpected: "missing '%1' near '%2'",
        tooLargeCodepoint: "UTF-8 value too large near '%1'",
        unfinishedLongString: "unfinished long string (starting at line %1) near '%2'",
        unfinishedLongComment: "unfinished long comment (starting at line %1) near '%2'",
        ambiguousSyntax: "ambiguous syntax (function call x new statement) near '%1'",
        noLoopToBreak: "no loop to break near '%1'",
        labelAlreadyDefined: "label '%1' already defined on line %2",
        labelNotVisible: "no visible label '%1' for <goto>",
        gotoJumpInLocalScope: "<goto %1> jumps into the scope of local '%2'",
        cannotUseVararg: "cannot use '...' outside a vararg function near '%1'",
        invalidCodeUnit: "code unit U+%1 is not allowed in the current encoding mode"
      };
      var ast = exports2.ast = {
        labelStatement: /* @__PURE__ */ __name2(function(label) {
          return {
            type: "LabelStatement",
            label
          };
        }, "labelStatement"),
        breakStatement: /* @__PURE__ */ __name2(function() {
          return {
            type: "BreakStatement"
          };
        }, "breakStatement"),
        gotoStatement: /* @__PURE__ */ __name2(function(label) {
          return {
            type: "GotoStatement",
            label
          };
        }, "gotoStatement"),
        returnStatement: /* @__PURE__ */ __name2(function(args) {
          return {
            type: "ReturnStatement",
            "arguments": args
          };
        }, "returnStatement"),
        ifStatement: /* @__PURE__ */ __name2(function(clauses) {
          return {
            type: "IfStatement",
            clauses
          };
        }, "ifStatement"),
        ifClause: /* @__PURE__ */ __name2(function(condition, body) {
          return {
            type: "IfClause",
            condition,
            body
          };
        }, "ifClause"),
        elseifClause: /* @__PURE__ */ __name2(function(condition, body) {
          return {
            type: "ElseifClause",
            condition,
            body
          };
        }, "elseifClause"),
        elseClause: /* @__PURE__ */ __name2(function(body) {
          return {
            type: "ElseClause",
            body
          };
        }, "elseClause"),
        whileStatement: /* @__PURE__ */ __name2(function(condition, body) {
          return {
            type: "WhileStatement",
            condition,
            body
          };
        }, "whileStatement"),
        doStatement: /* @__PURE__ */ __name2(function(body) {
          return {
            type: "DoStatement",
            body
          };
        }, "doStatement"),
        repeatStatement: /* @__PURE__ */ __name2(function(condition, body) {
          return {
            type: "RepeatStatement",
            condition,
            body
          };
        }, "repeatStatement"),
        localStatement: /* @__PURE__ */ __name2(function(variables, init) {
          return {
            type: "LocalStatement",
            variables,
            init
          };
        }, "localStatement"),
        assignmentStatement: /* @__PURE__ */ __name2(function(variables, init) {
          return {
            type: "AssignmentStatement",
            variables,
            init
          };
        }, "assignmentStatement"),
        callStatement: /* @__PURE__ */ __name2(function(expression) {
          return {
            type: "CallStatement",
            expression
          };
        }, "callStatement"),
        functionStatement: /* @__PURE__ */ __name2(function(identifier, parameters, isLocal, body) {
          return {
            type: "FunctionDeclaration",
            identifier,
            isLocal,
            parameters,
            body
          };
        }, "functionStatement"),
        forNumericStatement: /* @__PURE__ */ __name2(function(variable, start, end2, step, body) {
          return {
            type: "ForNumericStatement",
            variable,
            start,
            end: end2,
            step,
            body
          };
        }, "forNumericStatement"),
        forGenericStatement: /* @__PURE__ */ __name2(function(variables, iterators, body) {
          return {
            type: "ForGenericStatement",
            variables,
            iterators,
            body
          };
        }, "forGenericStatement"),
        chunk: /* @__PURE__ */ __name2(function(body) {
          return {
            type: "Chunk",
            body
          };
        }, "chunk"),
        identifier: /* @__PURE__ */ __name2(function(name) {
          return {
            type: "Identifier",
            name
          };
        }, "identifier"),
        literal: /* @__PURE__ */ __name2(function(type, value, raw) {
          type = type === StringLiteral ? "StringLiteral" : type === NumericLiteral ? "NumericLiteral" : type === BooleanLiteral ? "BooleanLiteral" : type === NilLiteral ? "NilLiteral" : "VarargLiteral";
          return {
            type,
            value,
            raw
          };
        }, "literal"),
        tableKey: /* @__PURE__ */ __name2(function(key, value) {
          return {
            type: "TableKey",
            key,
            value
          };
        }, "tableKey"),
        tableKeyString: /* @__PURE__ */ __name2(function(key, value) {
          return {
            type: "TableKeyString",
            key,
            value
          };
        }, "tableKeyString"),
        tableValue: /* @__PURE__ */ __name2(function(value) {
          return {
            type: "TableValue",
            value
          };
        }, "tableValue"),
        tableConstructorExpression: /* @__PURE__ */ __name2(function(fields) {
          return {
            type: "TableConstructorExpression",
            fields
          };
        }, "tableConstructorExpression"),
        binaryExpression: /* @__PURE__ */ __name2(function(operator, left, right) {
          var type = "and" === operator || "or" === operator ? "LogicalExpression" : "BinaryExpression";
          return {
            type,
            operator,
            left,
            right
          };
        }, "binaryExpression"),
        unaryExpression: /* @__PURE__ */ __name2(function(operator, argument) {
          return {
            type: "UnaryExpression",
            operator,
            argument
          };
        }, "unaryExpression"),
        memberExpression: /* @__PURE__ */ __name2(function(base, indexer, identifier) {
          return {
            type: "MemberExpression",
            indexer,
            identifier,
            base
          };
        }, "memberExpression"),
        indexExpression: /* @__PURE__ */ __name2(function(base, index2) {
          return {
            type: "IndexExpression",
            base,
            index: index2
          };
        }, "indexExpression"),
        callExpression: /* @__PURE__ */ __name2(function(base, args) {
          return {
            type: "CallExpression",
            base,
            "arguments": args
          };
        }, "callExpression"),
        tableCallExpression: /* @__PURE__ */ __name2(function(base, args) {
          return {
            type: "TableCallExpression",
            base,
            "arguments": args
          };
        }, "tableCallExpression"),
        stringCallExpression: /* @__PURE__ */ __name2(function(base, argument) {
          return {
            type: "StringCallExpression",
            base,
            argument
          };
        }, "stringCallExpression"),
        comment: /* @__PURE__ */ __name2(function(value, raw) {
          return {
            type: "Comment",
            value,
            raw
          };
        }, "comment")
      };
      function finishNode(node) {
        if (trackLocations) {
          var location = locations.pop();
          location.complete();
          location.bless(node);
        }
        if (options.onCreateNode) options.onCreateNode(node);
        return node;
      }
      __name(finishNode, "finishNode");
      __name2(finishNode, "finishNode");
      var slice = Array.prototype.slice, toString = Object.prototype.toString;
      var indexOf = (
        /* istanbul ignore next */
        /* @__PURE__ */ __name2(function(array, element) {
          for (var i = 0, length2 = array.length; i < length2; ++i) {
            if (array[i] === element) return i;
          }
          return -1;
        }, "indexOf")
      );
      if (Array.prototype.indexOf)
        indexOf = /* @__PURE__ */ __name2(function(array, element) {
          return array.indexOf(element);
        }, "indexOf");
      function indexOfObject(array, property, element) {
        for (var i = 0, length2 = array.length; i < length2; ++i) {
          if (array[i][property] === element) return i;
        }
        return -1;
      }
      __name(indexOfObject, "indexOfObject");
      __name2(indexOfObject, "indexOfObject");
      function sprintf(format) {
        var args = slice.call(arguments, 1);
        format = format.replace(/%(\d)/g, function(match2, index2) {
          return "" + args[index2 - 1] || /* istanbul ignore next */
          "";
        });
        return format;
      }
      __name(sprintf, "sprintf");
      __name2(sprintf, "sprintf");
      var assign = (
        /* istanbul ignore next */
        /* @__PURE__ */ __name2(function(dest) {
          var args = slice.call(arguments, 1), src, prop;
          for (var i = 0, length2 = args.length; i < length2; ++i) {
            src = args[i];
            for (prop in src)
              if (Object.prototype.hasOwnProperty.call(src, prop)) {
                dest[prop] = src[prop];
              }
          }
          return dest;
        }, "assign")
      );
      if (Object.assign)
        assign = Object.assign;
      exports2.SyntaxError = SyntaxError;
      function fixupError(e) {
        if (!Object.create)
          return e;
        return Object.create(e, {
          "line": { "writable": true, value: e.line },
          "index": { "writable": true, value: e.index },
          "column": { "writable": true, value: e.column }
        });
      }
      __name(fixupError, "fixupError");
      __name2(fixupError, "fixupError");
      function raise(token2) {
        var message = sprintf.apply(null, slice.call(arguments, 1)), error, col;
        if (token2 === null || typeof token2.line === "undefined") {
          col = index - lineStart + 1;
          error = fixupError(new SyntaxError(sprintf("[%1:%2] %3", line, col, message)));
          error.index = index;
          error.line = line;
          error.column = col;
        } else {
          col = token2.range[0] - token2.lineStart;
          error = fixupError(new SyntaxError(sprintf("[%1:%2] %3", token2.line, col, message)));
          error.line = token2.line;
          error.index = token2.range[0];
          error.column = col;
        }
        throw error;
      }
      __name(raise, "raise");
      __name2(raise, "raise");
      function tokenValue(token2) {
        var raw = input.slice(token2.range[0], token2.range[1]);
        if (raw)
          return raw;
        return token2.value;
      }
      __name(tokenValue, "tokenValue");
      __name2(tokenValue, "tokenValue");
      function raiseUnexpectedToken(type, token2) {
        raise(token2, errors.expectedToken, type, tokenValue(token2));
      }
      __name(raiseUnexpectedToken, "raiseUnexpectedToken");
      __name2(raiseUnexpectedToken, "raiseUnexpectedToken");
      function unexpected(found) {
        var near = tokenValue(lookahead);
        if ("undefined" !== typeof found.type) {
          var type;
          switch (found.type) {
            case StringLiteral:
              type = "string";
              break;
            case Keyword:
              type = "keyword";
              break;
            case Identifier:
              type = "identifier";
              break;
            case NumericLiteral:
              type = "number";
              break;
            case Punctuator:
              type = "symbol";
              break;
            case BooleanLiteral:
              type = "boolean";
              break;
            case NilLiteral:
              return raise(found, errors.unexpected, "symbol", "nil", near);
            case EOF:
              return raise(found, errors.unexpectedEOF);
          }
          return raise(found, errors.unexpected, type, tokenValue(found), near);
        }
        return raise(found, errors.unexpected, "symbol", found, near);
      }
      __name(unexpected, "unexpected");
      __name2(unexpected, "unexpected");
      var index, token, previousToken, lookahead, comments, tokenStart, line, lineStart;
      exports2.lex = lex;
      function lex() {
        skipWhiteSpace();
        while (45 === input.charCodeAt(index) && 45 === input.charCodeAt(index + 1)) {
          scanComment();
          skipWhiteSpace();
        }
        if (index >= length) return {
          type: EOF,
          value: "<eof>",
          line,
          lineStart,
          range: [index, index]
        };
        var charCode = input.charCodeAt(index), next2 = input.charCodeAt(index + 1);
        tokenStart = index;
        if (isIdentifierStart(charCode)) return scanIdentifierOrKeyword();
        switch (charCode) {
          case 39:
          case 34:
            return scanStringLiteral();
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
            return scanNumericLiteral();
          case 46:
            if (isDecDigit(next2)) return scanNumericLiteral();
            if (46 === next2) {
              if (46 === input.charCodeAt(index + 2)) return scanVarargLiteral();
              return scanPunctuator("..");
            }
            return scanPunctuator(".");
          case 61:
            if (61 === next2) return scanPunctuator("==");
            return scanPunctuator("=");
          case 62:
            if (features.bitwiseOperators) {
              if (62 === next2) return scanPunctuator(">>");
            }
            if (61 === next2) return scanPunctuator(">=");
            return scanPunctuator(">");
          case 60:
            if (features.bitwiseOperators) {
              if (60 === next2) return scanPunctuator("<<");
            }
            if (61 === next2) return scanPunctuator("<=");
            return scanPunctuator("<");
          case 126:
            if (61 === next2) return scanPunctuator("~=");
            if (!features.bitwiseOperators)
              break;
            return scanPunctuator("~");
          case 58:
            if (features.labels) {
              if (58 === next2) return scanPunctuator("::");
            }
            return scanPunctuator(":");
          case 91:
            if (91 === next2 || 61 === next2) return scanLongStringLiteral();
            return scanPunctuator("[");
          case 47:
            if (features.integerDivision) {
              if (47 === next2) return scanPunctuator("//");
            }
            return scanPunctuator("/");
          case 38:
          case 124:
            if (!features.bitwiseOperators)
              break;
          /* fall through */
          case 42:
          case 94:
          case 37:
          case 44:
          case 123:
          case 125:
          case 93:
          case 40:
          case 41:
          case 59:
          case 35:
          case 45:
          case 43:
            return scanPunctuator(input.charAt(index));
        }
        return unexpected(input.charAt(index));
      }
      __name(lex, "lex");
      __name2(lex, "lex");
      function consumeEOL() {
        var charCode = input.charCodeAt(index), peekCharCode = input.charCodeAt(index + 1);
        if (isLineTerminator(charCode)) {
          if (10 === charCode && 13 === peekCharCode) ++index;
          if (13 === charCode && 10 === peekCharCode) ++index;
          ++line;
          lineStart = ++index;
          return true;
        }
        return false;
      }
      __name(consumeEOL, "consumeEOL");
      __name2(consumeEOL, "consumeEOL");
      function skipWhiteSpace() {
        while (index < length) {
          var charCode = input.charCodeAt(index);
          if (isWhiteSpace(charCode)) {
            ++index;
          } else if (!consumeEOL()) {
            break;
          }
        }
      }
      __name(skipWhiteSpace, "skipWhiteSpace");
      __name2(skipWhiteSpace, "skipWhiteSpace");
      function scanIdentifierOrKeyword() {
        var value, type;
        while (isIdentifierPart(input.charCodeAt(++index))) ;
        value = encodingMode.fixup(input.slice(tokenStart, index));
        if (isKeyword(value)) {
          type = Keyword;
        } else if ("true" === value || "false" === value) {
          type = BooleanLiteral;
          value = "true" === value;
        } else if ("nil" === value) {
          type = NilLiteral;
          value = null;
        } else {
          type = Identifier;
        }
        return {
          type,
          value,
          line,
          lineStart,
          range: [tokenStart, index]
        };
      }
      __name(scanIdentifierOrKeyword, "scanIdentifierOrKeyword");
      __name2(scanIdentifierOrKeyword, "scanIdentifierOrKeyword");
      function scanPunctuator(value) {
        index += value.length;
        return {
          type: Punctuator,
          value,
          line,
          lineStart,
          range: [tokenStart, index]
        };
      }
      __name(scanPunctuator, "scanPunctuator");
      __name2(scanPunctuator, "scanPunctuator");
      function scanVarargLiteral() {
        index += 3;
        return {
          type: VarargLiteral,
          value: "...",
          line,
          lineStart,
          range: [tokenStart, index]
        };
      }
      __name(scanVarargLiteral, "scanVarargLiteral");
      __name2(scanVarargLiteral, "scanVarargLiteral");
      function scanStringLiteral() {
        var delimiter = input.charCodeAt(index++), beginLine = line, beginLineStart = lineStart, stringStart = index, string = encodingMode.discardStrings ? null : "", charCode;
        for (; ; ) {
          charCode = input.charCodeAt(index++);
          if (delimiter === charCode) break;
          if (index > length || isLineTerminator(charCode)) {
            string += input.slice(stringStart, index - 1);
            raise(null, errors.unfinishedString, input.slice(tokenStart, index - 1));
          }
          if (92 === charCode) {
            if (!encodingMode.discardStrings) {
              var beforeEscape = input.slice(stringStart, index - 1);
              string += encodingMode.fixup(beforeEscape);
            }
            var escapeValue = readEscapeSequence();
            if (!encodingMode.discardStrings)
              string += escapeValue;
            stringStart = index;
          }
        }
        if (!encodingMode.discardStrings) {
          string += encodingMode.encodeByte(null);
          string += encodingMode.fixup(input.slice(stringStart, index - 1));
        }
        return {
          type: StringLiteral,
          value: string,
          line: beginLine,
          lineStart: beginLineStart,
          lastLine: line,
          lastLineStart: lineStart,
          range: [tokenStart, index]
        };
      }
      __name(scanStringLiteral, "scanStringLiteral");
      __name2(scanStringLiteral, "scanStringLiteral");
      function scanLongStringLiteral() {
        var beginLine = line, beginLineStart = lineStart, string = readLongString(false);
        if (false === string) raise(token, errors.expected, "[", tokenValue(token));
        return {
          type: StringLiteral,
          value: encodingMode.discardStrings ? null : encodingMode.fixup(string),
          line: beginLine,
          lineStart: beginLineStart,
          lastLine: line,
          lastLineStart: lineStart,
          range: [tokenStart, index]
        };
      }
      __name(scanLongStringLiteral, "scanLongStringLiteral");
      __name2(scanLongStringLiteral, "scanLongStringLiteral");
      function scanNumericLiteral() {
        var character = input.charAt(index), next2 = input.charAt(index + 1);
        var literal = "0" === character && "xX".indexOf(next2 || null) >= 0 ? readHexLiteral() : readDecLiteral();
        var foundImaginaryUnit = readImaginaryUnitSuffix(), foundInt64Suffix = readInt64Suffix();
        if (foundInt64Suffix && (foundImaginaryUnit || literal.hasFractionPart)) {
          raise(null, errors.malformedNumber, input.slice(tokenStart, index));
        }
        return {
          type: NumericLiteral,
          value: literal.value,
          line,
          lineStart,
          range: [tokenStart, index]
        };
      }
      __name(scanNumericLiteral, "scanNumericLiteral");
      __name2(scanNumericLiteral, "scanNumericLiteral");
      function readImaginaryUnitSuffix() {
        if (!features.imaginaryNumbers) return;
        if ("iI".indexOf(input.charAt(index) || null) >= 0) {
          ++index;
          return true;
        } else {
          return false;
        }
      }
      __name(readImaginaryUnitSuffix, "readImaginaryUnitSuffix");
      __name2(readImaginaryUnitSuffix, "readImaginaryUnitSuffix");
      function readInt64Suffix() {
        if (!features.integerSuffixes) return;
        if ("uU".indexOf(input.charAt(index) || null) >= 0) {
          ++index;
          if ("lL".indexOf(input.charAt(index) || null) >= 0) {
            ++index;
            if ("lL".indexOf(input.charAt(index) || null) >= 0) {
              ++index;
              return "ULL";
            } else {
              raise(null, errors.malformedNumber, input.slice(tokenStart, index));
            }
          } else {
            raise(null, errors.malformedNumber, input.slice(tokenStart, index));
          }
        } else if ("lL".indexOf(input.charAt(index) || null) >= 0) {
          ++index;
          if ("lL".indexOf(input.charAt(index) || null) >= 0) {
            ++index;
            return "LL";
          } else {
            raise(null, errors.malformedNumber, input.slice(tokenStart, index));
          }
        }
      }
      __name(readInt64Suffix, "readInt64Suffix");
      __name2(readInt64Suffix, "readInt64Suffix");
      function readHexLiteral() {
        var fraction = 0, binaryExponent = 1, binarySign = 1, digit, fractionStart, exponentStart, digitStart;
        digitStart = index += 2;
        if (!isHexDigit(input.charCodeAt(index)))
          raise(null, errors.malformedNumber, input.slice(tokenStart, index));
        while (isHexDigit(input.charCodeAt(index))) ++index;
        digit = parseInt(input.slice(digitStart, index), 16);
        var foundFraction = false;
        if ("." === input.charAt(index)) {
          foundFraction = true;
          fractionStart = ++index;
          while (isHexDigit(input.charCodeAt(index))) ++index;
          fraction = input.slice(fractionStart, index);
          fraction = fractionStart === index ? 0 : parseInt(fraction, 16) / Math.pow(16, index - fractionStart);
        }
        var foundBinaryExponent = false;
        if ("pP".indexOf(input.charAt(index) || null) >= 0) {
          foundBinaryExponent = true;
          ++index;
          if ("+-".indexOf(input.charAt(index) || null) >= 0)
            binarySign = "+" === input.charAt(index++) ? 1 : -1;
          exponentStart = index;
          if (!isDecDigit(input.charCodeAt(index)))
            raise(null, errors.malformedNumber, input.slice(tokenStart, index));
          while (isDecDigit(input.charCodeAt(index))) ++index;
          binaryExponent = input.slice(exponentStart, index);
          binaryExponent = Math.pow(2, binaryExponent * binarySign);
        }
        return {
          value: (digit + fraction) * binaryExponent,
          hasFractionPart: foundFraction || foundBinaryExponent
        };
      }
      __name(readHexLiteral, "readHexLiteral");
      __name2(readHexLiteral, "readHexLiteral");
      function readDecLiteral() {
        while (isDecDigit(input.charCodeAt(index))) ++index;
        var foundFraction = false;
        if ("." === input.charAt(index)) {
          foundFraction = true;
          ++index;
          while (isDecDigit(input.charCodeAt(index))) ++index;
        }
        var foundExponent = false;
        if ("eE".indexOf(input.charAt(index) || null) >= 0) {
          foundExponent = true;
          ++index;
          if ("+-".indexOf(input.charAt(index) || null) >= 0) ++index;
          if (!isDecDigit(input.charCodeAt(index)))
            raise(null, errors.malformedNumber, input.slice(tokenStart, index));
          while (isDecDigit(input.charCodeAt(index))) ++index;
        }
        return {
          value: parseFloat(input.slice(tokenStart, index)),
          hasFractionPart: foundFraction || foundExponent
        };
      }
      __name(readDecLiteral, "readDecLiteral");
      __name2(readDecLiteral, "readDecLiteral");
      function readUnicodeEscapeSequence() {
        var sequenceStart = index++;
        if (input.charAt(index++) !== "{")
          raise(null, errors.braceExpected, "{", "\\" + input.slice(sequenceStart, index));
        if (!isHexDigit(input.charCodeAt(index)))
          raise(null, errors.hexadecimalDigitExpected, "\\" + input.slice(sequenceStart, index));
        while (input.charCodeAt(index) === 48) ++index;
        var escStart = index;
        while (isHexDigit(input.charCodeAt(index))) {
          ++index;
          if (index - escStart > 6)
            raise(null, errors.tooLargeCodepoint, "\\" + input.slice(sequenceStart, index));
        }
        var b = input.charAt(index++);
        if (b !== "}") {
          if (b === '"' || b === "'")
            raise(null, errors.braceExpected, "}", "\\" + input.slice(sequenceStart, index--));
          else
            raise(null, errors.hexadecimalDigitExpected, "\\" + input.slice(sequenceStart, index));
        }
        var codepoint = parseInt(input.slice(escStart, index - 1) || "0", 16);
        var frag = "\\" + input.slice(sequenceStart, index);
        if (codepoint > 1114111) {
          raise(null, errors.tooLargeCodepoint, frag);
        }
        return encodingMode.encodeUTF8(codepoint, frag);
      }
      __name(readUnicodeEscapeSequence, "readUnicodeEscapeSequence");
      __name2(readUnicodeEscapeSequence, "readUnicodeEscapeSequence");
      function readEscapeSequence() {
        var sequenceStart = index;
        switch (input.charAt(index)) {
          // Lua allow the following escape sequences.
          case "a":
            ++index;
            return "\x07";
          case "n":
            ++index;
            return "\n";
          case "r":
            ++index;
            return "\r";
          case "t":
            ++index;
            return "	";
          case "v":
            ++index;
            return "\v";
          case "b":
            ++index;
            return "\b";
          case "f":
            ++index;
            return "\f";
          // Backslash at the end of the line. We treat all line endings as equivalent,
          // and as representing the [LF] character (code 10). Lua 5.1 through 5.3
          // have been verified to behave the same way.
          case "\r":
          case "\n":
            consumeEOL();
            return "\n";
          case "0":
          case "1":
          case "2":
          case "3":
          case "4":
          case "5":
          case "6":
          case "7":
          case "8":
          case "9":
            while (isDecDigit(input.charCodeAt(index)) && index - sequenceStart < 3) ++index;
            var frag = input.slice(sequenceStart, index);
            var ddd = parseInt(frag, 10);
            if (ddd > 255) {
              raise(null, errors.decimalEscapeTooLarge, "\\" + ddd);
            }
            return encodingMode.encodeByte(ddd, "\\" + frag);
          case "z":
            if (features.skipWhitespaceEscape) {
              ++index;
              skipWhiteSpace();
              return "";
            }
            break;
          case "x":
            if (features.hexEscapes) {
              if (isHexDigit(input.charCodeAt(index + 1)) && isHexDigit(input.charCodeAt(index + 2))) {
                index += 3;
                return encodingMode.encodeByte(parseInt(input.slice(sequenceStart + 1, index), 16), "\\" + input.slice(sequenceStart, index));
              }
              raise(null, errors.hexadecimalDigitExpected, "\\" + input.slice(sequenceStart, index + 2));
            }
            break;
          case "u":
            if (features.unicodeEscapes)
              return readUnicodeEscapeSequence();
            break;
          case "\\":
          case '"':
          case "'":
            return input.charAt(index++);
        }
        if (features.strictEscapes)
          raise(null, errors.invalidEscape, "\\" + input.slice(sequenceStart, index + 1));
        return input.charAt(index++);
      }
      __name(readEscapeSequence, "readEscapeSequence");
      __name2(readEscapeSequence, "readEscapeSequence");
      function scanComment() {
        tokenStart = index;
        index += 2;
        var character = input.charAt(index), content = "", isLong = false, commentStart = index, lineStartComment = lineStart, lineComment = line;
        if ("[" === character) {
          content = readLongString(true);
          if (false === content) content = character;
          else isLong = true;
        }
        if (!isLong) {
          while (index < length) {
            if (isLineTerminator(input.charCodeAt(index))) break;
            ++index;
          }
          if (options.comments) content = input.slice(commentStart, index);
        }
        if (options.comments) {
          var node = ast.comment(content, input.slice(tokenStart, index));
          if (options.locations) {
            node.loc = {
              start: { line: lineComment, column: tokenStart - lineStartComment },
              end: { line, column: index - lineStart }
            };
          }
          if (options.ranges) {
            node.range = [tokenStart, index];
          }
          if (options.onCreateNode) options.onCreateNode(node);
          comments.push(node);
        }
      }
      __name(scanComment, "scanComment");
      __name2(scanComment, "scanComment");
      function readLongString(isComment) {
        var level = 0, content = "", terminator = false, character, stringStart, firstLine = line;
        ++index;
        while ("=" === input.charAt(index + level)) ++level;
        if ("[" !== input.charAt(index + level)) return false;
        index += level + 1;
        if (isLineTerminator(input.charCodeAt(index))) consumeEOL();
        stringStart = index;
        while (index < length) {
          while (isLineTerminator(input.charCodeAt(index))) consumeEOL();
          character = input.charAt(index++);
          if ("]" === character) {
            terminator = true;
            for (var i = 0; i < level; ++i) {
              if ("=" !== input.charAt(index + i)) terminator = false;
            }
            if ("]" !== input.charAt(index + level)) terminator = false;
          }
          if (terminator) {
            content += input.slice(stringStart, index - 1);
            index += level + 1;
            return content;
          }
        }
        raise(
          null,
          isComment ? errors.unfinishedLongComment : errors.unfinishedLongString,
          firstLine,
          "<eof>"
        );
      }
      __name(readLongString, "readLongString");
      __name2(readLongString, "readLongString");
      function next() {
        previousToken = token;
        token = lookahead;
        lookahead = lex();
      }
      __name(next, "next");
      __name2(next, "next");
      function consume(value) {
        if (value === token.value) {
          next();
          return true;
        }
        return false;
      }
      __name(consume, "consume");
      __name2(consume, "consume");
      function expect(value) {
        if (value === token.value) next();
        else raise(token, errors.expected, value, tokenValue(token));
      }
      __name(expect, "expect");
      __name2(expect, "expect");
      function isWhiteSpace(charCode) {
        return 9 === charCode || 32 === charCode || 11 === charCode || 12 === charCode;
      }
      __name(isWhiteSpace, "isWhiteSpace");
      __name2(isWhiteSpace, "isWhiteSpace");
      function isLineTerminator(charCode) {
        return 10 === charCode || 13 === charCode;
      }
      __name(isLineTerminator, "isLineTerminator");
      __name2(isLineTerminator, "isLineTerminator");
      function isDecDigit(charCode) {
        return charCode >= 48 && charCode <= 57;
      }
      __name(isDecDigit, "isDecDigit");
      __name2(isDecDigit, "isDecDigit");
      function isHexDigit(charCode) {
        return charCode >= 48 && charCode <= 57 || charCode >= 97 && charCode <= 102 || charCode >= 65 && charCode <= 70;
      }
      __name(isHexDigit, "isHexDigit");
      __name2(isHexDigit, "isHexDigit");
      function isIdentifierStart(charCode) {
        if (charCode >= 65 && charCode <= 90 || charCode >= 97 && charCode <= 122 || 95 === charCode)
          return true;
        if (features.extendedIdentifiers && charCode >= 128)
          return true;
        return false;
      }
      __name(isIdentifierStart, "isIdentifierStart");
      __name2(isIdentifierStart, "isIdentifierStart");
      function isIdentifierPart(charCode) {
        if (charCode >= 65 && charCode <= 90 || charCode >= 97 && charCode <= 122 || 95 === charCode || charCode >= 48 && charCode <= 57)
          return true;
        if (features.extendedIdentifiers && charCode >= 128)
          return true;
        return false;
      }
      __name(isIdentifierPart, "isIdentifierPart");
      __name2(isIdentifierPart, "isIdentifierPart");
      function isKeyword(id) {
        switch (id.length) {
          case 2:
            return "do" === id || "if" === id || "in" === id || "or" === id;
          case 3:
            return "and" === id || "end" === id || "for" === id || "not" === id;
          case 4:
            if ("else" === id || "then" === id)
              return true;
            if (features.labels && !features.contextualGoto)
              return "goto" === id;
            return false;
          case 5:
            return "break" === id || "local" === id || "until" === id || "while" === id;
          case 6:
            return "elseif" === id || "repeat" === id || "return" === id;
          case 8:
            return "function" === id;
        }
        return false;
      }
      __name(isKeyword, "isKeyword");
      __name2(isKeyword, "isKeyword");
      function isUnary(token2) {
        if (Punctuator === token2.type) return "#-~".indexOf(token2.value) >= 0;
        if (Keyword === token2.type) return "not" === token2.value;
        return false;
      }
      __name(isUnary, "isUnary");
      __name2(isUnary, "isUnary");
      function isBlockFollow(token2) {
        if (EOF === token2.type) return true;
        if (Keyword !== token2.type) return false;
        switch (token2.value) {
          case "else":
          case "elseif":
          case "end":
          case "until":
            return true;
          default:
            return false;
        }
      }
      __name(isBlockFollow, "isBlockFollow");
      __name2(isBlockFollow, "isBlockFollow");
      var scopes, scopeDepth, globals;
      function createScope() {
        var scope = scopes[scopeDepth++].slice();
        scopes.push(scope);
        if (options.onCreateScope) options.onCreateScope();
      }
      __name(createScope, "createScope");
      __name2(createScope, "createScope");
      function destroyScope() {
        var scope = scopes.pop();
        --scopeDepth;
        if (options.onDestroyScope) options.onDestroyScope();
      }
      __name(destroyScope, "destroyScope");
      __name2(destroyScope, "destroyScope");
      function scopeIdentifierName(name) {
        if (options.onLocalDeclaration) options.onLocalDeclaration(name);
        if (-1 !== indexOf(scopes[scopeDepth], name)) return;
        scopes[scopeDepth].push(name);
      }
      __name(scopeIdentifierName, "scopeIdentifierName");
      __name2(scopeIdentifierName, "scopeIdentifierName");
      function scopeIdentifier(node) {
        scopeIdentifierName(node.name);
        attachScope(node, true);
      }
      __name(scopeIdentifier, "scopeIdentifier");
      __name2(scopeIdentifier, "scopeIdentifier");
      function attachScope(node, isLocal) {
        if (!isLocal && -1 === indexOfObject(globals, "name", node.name))
          globals.push(node);
        node.isLocal = isLocal;
      }
      __name(attachScope, "attachScope");
      __name2(attachScope, "attachScope");
      function scopeHasName(name) {
        return -1 !== indexOf(scopes[scopeDepth], name);
      }
      __name(scopeHasName, "scopeHasName");
      __name2(scopeHasName, "scopeHasName");
      var locations = [], trackLocations;
      function createLocationMarker() {
        return new Marker(token);
      }
      __name(createLocationMarker, "createLocationMarker");
      __name2(createLocationMarker, "createLocationMarker");
      function Marker(token2) {
        if (options.locations) {
          this.loc = {
            start: {
              line: token2.line,
              column: token2.range[0] - token2.lineStart
            },
            end: {
              line: 0,
              column: 0
            }
          };
        }
        if (options.ranges) this.range = [token2.range[0], 0];
      }
      __name(Marker, "Marker");
      __name2(Marker, "Marker");
      Marker.prototype.complete = function() {
        if (options.locations) {
          this.loc.end.line = previousToken.lastLine || previousToken.line;
          this.loc.end.column = previousToken.range[1] - (previousToken.lastLineStart || previousToken.lineStart);
        }
        if (options.ranges) {
          this.range[1] = previousToken.range[1];
        }
      };
      Marker.prototype.bless = function(node) {
        if (this.loc) {
          var loc = this.loc;
          node.loc = {
            start: {
              line: loc.start.line,
              column: loc.start.column
            },
            end: {
              line: loc.end.line,
              column: loc.end.column
            }
          };
        }
        if (this.range) {
          node.range = [
            this.range[0],
            this.range[1]
          ];
        }
      };
      function markLocation() {
        if (trackLocations) locations.push(createLocationMarker());
      }
      __name(markLocation, "markLocation");
      __name2(markLocation, "markLocation");
      function pushLocation(marker) {
        if (trackLocations) locations.push(marker);
      }
      __name(pushLocation, "pushLocation");
      __name2(pushLocation, "pushLocation");
      function FullFlowContext() {
        this.scopes = [];
        this.pendingGotos = [];
      }
      __name(FullFlowContext, "FullFlowContext");
      __name2(FullFlowContext, "FullFlowContext");
      FullFlowContext.prototype.isInLoop = function() {
        var i = this.scopes.length;
        while (i-- > 0) {
          if (this.scopes[i].isLoop)
            return true;
        }
        return false;
      };
      FullFlowContext.prototype.pushScope = function(isLoop) {
        var scope = {
          labels: {},
          locals: [],
          deferredGotos: [],
          isLoop: !!isLoop
        };
        this.scopes.push(scope);
      };
      FullFlowContext.prototype.popScope = function() {
        for (var i = 0; i < this.pendingGotos.length; ++i) {
          var theGoto = this.pendingGotos[i];
          if (theGoto.maxDepth >= this.scopes.length) {
            if (--theGoto.maxDepth <= 0)
              raise(theGoto.token, errors.labelNotVisible, theGoto.target);
          }
        }
        this.scopes.pop();
      };
      FullFlowContext.prototype.addGoto = function(target, token2) {
        var localCounts = [];
        for (var i = 0; i < this.scopes.length; ++i) {
          var scope = this.scopes[i];
          localCounts.push(scope.locals.length);
          if (Object.prototype.hasOwnProperty.call(scope.labels, target))
            return;
        }
        this.pendingGotos.push({
          maxDepth: this.scopes.length,
          target,
          token: token2,
          localCounts
        });
      };
      FullFlowContext.prototype.addLabel = function(name, token2) {
        var scope = this.currentScope();
        if (Object.prototype.hasOwnProperty.call(scope.labels, name)) {
          raise(token2, errors.labelAlreadyDefined, name, scope.labels[name].line);
        } else {
          var newGotos = [];
          for (var i = 0; i < this.pendingGotos.length; ++i) {
            var theGoto = this.pendingGotos[i];
            if (theGoto.maxDepth >= this.scopes.length && theGoto.target === name) {
              if (theGoto.localCounts[this.scopes.length - 1] < scope.locals.length) {
                scope.deferredGotos.push(theGoto);
              }
              continue;
            }
            newGotos.push(theGoto);
          }
          this.pendingGotos = newGotos;
        }
        scope.labels[name] = {
          localCount: scope.locals.length,
          line: token2.line
        };
      };
      FullFlowContext.prototype.addLocal = function(name, token2) {
        this.currentScope().locals.push({
          name,
          token: token2
        });
      };
      FullFlowContext.prototype.currentScope = function() {
        return this.scopes[this.scopes.length - 1];
      };
      FullFlowContext.prototype.raiseDeferredErrors = function() {
        var scope = this.currentScope();
        var bads = scope.deferredGotos;
        for (var i = 0; i < bads.length; ++i) {
          var theGoto = bads[i];
          raise(theGoto.token, errors.gotoJumpInLocalScope, theGoto.target, scope.locals[theGoto.localCounts[this.scopes.length - 1]].name);
        }
      };
      function LoopFlowContext() {
        this.level = 0;
        this.loopLevels = [];
      }
      __name(LoopFlowContext, "LoopFlowContext");
      __name2(LoopFlowContext, "LoopFlowContext");
      LoopFlowContext.prototype.isInLoop = function() {
        return !!this.loopLevels.length;
      };
      LoopFlowContext.prototype.pushScope = function(isLoop) {
        ++this.level;
        if (isLoop)
          this.loopLevels.push(this.level);
      };
      LoopFlowContext.prototype.popScope = function() {
        var levels = this.loopLevels;
        var levlen = levels.length;
        if (levlen) {
          if (levels[levlen - 1] === this.level)
            levels.pop();
        }
        --this.level;
      };
      LoopFlowContext.prototype.addGoto = LoopFlowContext.prototype.addLabel = /* istanbul ignore next */
      function() {
        throw new Error("This should never happen");
      };
      LoopFlowContext.prototype.addLocal = LoopFlowContext.prototype.raiseDeferredErrors = function() {
      };
      function makeFlowContext() {
        return features.labels ? new FullFlowContext() : new LoopFlowContext();
      }
      __name(makeFlowContext, "makeFlowContext");
      __name2(makeFlowContext, "makeFlowContext");
      function parseChunk() {
        next();
        markLocation();
        if (options.scope) createScope();
        var flowContext = makeFlowContext();
        flowContext.allowVararg = true;
        flowContext.pushScope();
        var body = parseBlock(flowContext);
        flowContext.popScope();
        if (options.scope) destroyScope();
        if (EOF !== token.type) unexpected(token);
        if (trackLocations && !body.length) previousToken = token;
        return finishNode(ast.chunk(body));
      }
      __name(parseChunk, "parseChunk");
      __name2(parseChunk, "parseChunk");
      function parseBlock(flowContext) {
        var block = [], statement;
        while (!isBlockFollow(token)) {
          if ("return" === token.value || !features.relaxedBreak && "break" === token.value) {
            block.push(parseStatement(flowContext));
            break;
          }
          statement = parseStatement(flowContext);
          consume(";");
          if (statement) block.push(statement);
        }
        return block;
      }
      __name(parseBlock, "parseBlock");
      __name2(parseBlock, "parseBlock");
      function parseStatement(flowContext) {
        markLocation();
        if (Punctuator === token.type) {
          if (consume("::")) return parseLabelStatement(flowContext);
        }
        if (features.emptyStatement) {
          if (consume(";")) {
            if (trackLocations) locations.pop();
            return;
          }
        }
        flowContext.raiseDeferredErrors();
        if (Keyword === token.type) {
          switch (token.value) {
            case "local":
              next();
              return parseLocalStatement(flowContext);
            case "if":
              next();
              return parseIfStatement(flowContext);
            case "return":
              next();
              return parseReturnStatement(flowContext);
            case "function":
              next();
              var name = parseFunctionName();
              return parseFunctionDeclaration(name);
            case "while":
              next();
              return parseWhileStatement(flowContext);
            case "for":
              next();
              return parseForStatement(flowContext);
            case "repeat":
              next();
              return parseRepeatStatement(flowContext);
            case "break":
              next();
              if (!flowContext.isInLoop())
                raise(token, errors.noLoopToBreak, token.value);
              return parseBreakStatement();
            case "do":
              next();
              return parseDoStatement(flowContext);
            case "goto":
              next();
              return parseGotoStatement(flowContext);
          }
        }
        if (features.contextualGoto && token.type === Identifier && token.value === "goto" && lookahead.type === Identifier && lookahead.value !== "goto") {
          next();
          return parseGotoStatement(flowContext);
        }
        if (trackLocations) locations.pop();
        return parseAssignmentOrCallStatement(flowContext);
      }
      __name(parseStatement, "parseStatement");
      __name2(parseStatement, "parseStatement");
      function parseLabelStatement(flowContext) {
        var nameToken = token, label = parseIdentifier();
        if (options.scope) {
          scopeIdentifierName("::" + nameToken.value + "::");
          attachScope(label, true);
        }
        expect("::");
        flowContext.addLabel(nameToken.value, nameToken);
        return finishNode(ast.labelStatement(label));
      }
      __name(parseLabelStatement, "parseLabelStatement");
      __name2(parseLabelStatement, "parseLabelStatement");
      function parseBreakStatement() {
        return finishNode(ast.breakStatement());
      }
      __name(parseBreakStatement, "parseBreakStatement");
      __name2(parseBreakStatement, "parseBreakStatement");
      function parseGotoStatement(flowContext) {
        var name = token.value, gotoToken = previousToken, label = parseIdentifier();
        flowContext.addGoto(name, gotoToken);
        return finishNode(ast.gotoStatement(label));
      }
      __name(parseGotoStatement, "parseGotoStatement");
      __name2(parseGotoStatement, "parseGotoStatement");
      function parseDoStatement(flowContext) {
        if (options.scope) createScope();
        flowContext.pushScope();
        var body = parseBlock(flowContext);
        flowContext.popScope();
        if (options.scope) destroyScope();
        expect("end");
        return finishNode(ast.doStatement(body));
      }
      __name(parseDoStatement, "parseDoStatement");
      __name2(parseDoStatement, "parseDoStatement");
      function parseWhileStatement(flowContext) {
        var condition = parseExpectedExpression(flowContext);
        expect("do");
        if (options.scope) createScope();
        flowContext.pushScope(true);
        var body = parseBlock(flowContext);
        flowContext.popScope();
        if (options.scope) destroyScope();
        expect("end");
        return finishNode(ast.whileStatement(condition, body));
      }
      __name(parseWhileStatement, "parseWhileStatement");
      __name2(parseWhileStatement, "parseWhileStatement");
      function parseRepeatStatement(flowContext) {
        if (options.scope) createScope();
        flowContext.pushScope(true);
        var body = parseBlock(flowContext);
        expect("until");
        flowContext.raiseDeferredErrors();
        var condition = parseExpectedExpression(flowContext);
        flowContext.popScope();
        if (options.scope) destroyScope();
        return finishNode(ast.repeatStatement(condition, body));
      }
      __name(parseRepeatStatement, "parseRepeatStatement");
      __name2(parseRepeatStatement, "parseRepeatStatement");
      function parseReturnStatement(flowContext) {
        var expressions = [];
        if ("end" !== token.value) {
          var expression = parseExpression(flowContext);
          if (null != expression) expressions.push(expression);
          while (consume(",")) {
            expression = parseExpectedExpression(flowContext);
            expressions.push(expression);
          }
          consume(";");
        }
        return finishNode(ast.returnStatement(expressions));
      }
      __name(parseReturnStatement, "parseReturnStatement");
      __name2(parseReturnStatement, "parseReturnStatement");
      function parseIfStatement(flowContext) {
        var clauses = [], condition, body, marker;
        if (trackLocations) {
          marker = locations[locations.length - 1];
          locations.push(marker);
        }
        condition = parseExpectedExpression(flowContext);
        expect("then");
        if (options.scope) createScope();
        flowContext.pushScope();
        body = parseBlock(flowContext);
        flowContext.popScope();
        if (options.scope) destroyScope();
        clauses.push(finishNode(ast.ifClause(condition, body)));
        if (trackLocations) marker = createLocationMarker();
        while (consume("elseif")) {
          pushLocation(marker);
          condition = parseExpectedExpression(flowContext);
          expect("then");
          if (options.scope) createScope();
          flowContext.pushScope();
          body = parseBlock(flowContext);
          flowContext.popScope();
          if (options.scope) destroyScope();
          clauses.push(finishNode(ast.elseifClause(condition, body)));
          if (trackLocations) marker = createLocationMarker();
        }
        if (consume("else")) {
          if (trackLocations) {
            marker = new Marker(previousToken);
            locations.push(marker);
          }
          if (options.scope) createScope();
          flowContext.pushScope();
          body = parseBlock(flowContext);
          flowContext.popScope();
          if (options.scope) destroyScope();
          clauses.push(finishNode(ast.elseClause(body)));
        }
        expect("end");
        return finishNode(ast.ifStatement(clauses));
      }
      __name(parseIfStatement, "parseIfStatement");
      __name2(parseIfStatement, "parseIfStatement");
      function parseForStatement(flowContext) {
        var variable = parseIdentifier(), body;
        if (options.scope) {
          createScope();
          scopeIdentifier(variable);
        }
        if (consume("=")) {
          var start = parseExpectedExpression(flowContext);
          expect(",");
          var end2 = parseExpectedExpression(flowContext);
          var step = consume(",") ? parseExpectedExpression(flowContext) : null;
          expect("do");
          flowContext.pushScope(true);
          body = parseBlock(flowContext);
          flowContext.popScope();
          expect("end");
          if (options.scope) destroyScope();
          return finishNode(ast.forNumericStatement(variable, start, end2, step, body));
        } else {
          var variables = [variable];
          while (consume(",")) {
            variable = parseIdentifier();
            if (options.scope) scopeIdentifier(variable);
            variables.push(variable);
          }
          expect("in");
          var iterators = [];
          do {
            var expression = parseExpectedExpression(flowContext);
            iterators.push(expression);
          } while (consume(","));
          expect("do");
          flowContext.pushScope(true);
          body = parseBlock(flowContext);
          flowContext.popScope();
          expect("end");
          if (options.scope) destroyScope();
          return finishNode(ast.forGenericStatement(variables, iterators, body));
        }
      }
      __name(parseForStatement, "parseForStatement");
      __name2(parseForStatement, "parseForStatement");
      function parseLocalStatement(flowContext) {
        var name, declToken = previousToken;
        if (Identifier === token.type) {
          var variables = [], init = [];
          do {
            name = parseIdentifier();
            variables.push(name);
            flowContext.addLocal(name.name, declToken);
          } while (consume(","));
          if (consume("=")) {
            do {
              var expression = parseExpectedExpression(flowContext);
              init.push(expression);
            } while (consume(","));
          }
          if (options.scope) {
            for (var i = 0, l = variables.length; i < l; ++i) {
              scopeIdentifier(variables[i]);
            }
          }
          return finishNode(ast.localStatement(variables, init));
        }
        if (consume("function")) {
          name = parseIdentifier();
          flowContext.addLocal(name.name, declToken);
          if (options.scope) {
            scopeIdentifier(name);
            createScope();
          }
          return parseFunctionDeclaration(name, true);
        } else {
          raiseUnexpectedToken("<name>", token);
        }
      }
      __name(parseLocalStatement, "parseLocalStatement");
      __name2(parseLocalStatement, "parseLocalStatement");
      function parseAssignmentOrCallStatement(flowContext) {
        var previous = token, marker, startMarker;
        var lvalue, base, name;
        var targets = [];
        if (trackLocations) startMarker = createLocationMarker();
        do {
          if (trackLocations) marker = createLocationMarker();
          if (Identifier === token.type) {
            name = token.value;
            base = parseIdentifier();
            if (options.scope) attachScope(base, scopeHasName(name));
            lvalue = true;
          } else if ("(" === token.value) {
            next();
            base = parseExpectedExpression(flowContext);
            expect(")");
            lvalue = false;
          } else {
            return unexpected(token);
          }
          both: for (; ; ) {
            var newBase;
            switch (StringLiteral === token.type ? '"' : token.value) {
              case ".":
              case "[":
                lvalue = true;
                break;
              case ":":
              case "(":
              case "{":
              case '"':
                lvalue = null;
                break;
              default:
                break both;
            }
            base = parsePrefixExpressionPart(base, marker, flowContext);
          }
          targets.push(base);
          if ("," !== token.value)
            break;
          if (!lvalue) {
            return unexpected(token);
          }
          next();
        } while (true);
        if (targets.length === 1 && lvalue === null) {
          pushLocation(marker);
          return finishNode(ast.callStatement(targets[0]));
        } else if (!lvalue) {
          return unexpected(token);
        }
        expect("=");
        var values = [];
        do {
          values.push(parseExpectedExpression(flowContext));
        } while (consume(","));
        pushLocation(startMarker);
        return finishNode(ast.assignmentStatement(targets, values));
      }
      __name(parseAssignmentOrCallStatement, "parseAssignmentOrCallStatement");
      __name2(parseAssignmentOrCallStatement, "parseAssignmentOrCallStatement");
      function parseIdentifier() {
        markLocation();
        var identifier = token.value;
        if (Identifier !== token.type) raiseUnexpectedToken("<name>", token);
        next();
        return finishNode(ast.identifier(identifier));
      }
      __name(parseIdentifier, "parseIdentifier");
      __name2(parseIdentifier, "parseIdentifier");
      function parseFunctionDeclaration(name, isLocal) {
        var flowContext = makeFlowContext();
        flowContext.pushScope();
        var parameters = [];
        expect("(");
        if (!consume(")")) {
          while (true) {
            if (Identifier === token.type) {
              var parameter = parseIdentifier();
              if (options.scope) scopeIdentifier(parameter);
              parameters.push(parameter);
              if (consume(",")) continue;
            } else if (VarargLiteral === token.type) {
              flowContext.allowVararg = true;
              parameters.push(parsePrimaryExpression(flowContext));
            } else {
              raiseUnexpectedToken("<name> or '...'", token);
            }
            expect(")");
            break;
          }
        }
        var body = parseBlock(flowContext);
        flowContext.popScope();
        expect("end");
        if (options.scope) destroyScope();
        isLocal = isLocal || false;
        return finishNode(ast.functionStatement(name, parameters, isLocal, body));
      }
      __name(parseFunctionDeclaration, "parseFunctionDeclaration");
      __name2(parseFunctionDeclaration, "parseFunctionDeclaration");
      function parseFunctionName() {
        var base, name, marker;
        if (trackLocations) marker = createLocationMarker();
        base = parseIdentifier();
        if (options.scope) {
          attachScope(base, scopeHasName(base.name));
          createScope();
        }
        while (consume(".")) {
          pushLocation(marker);
          name = parseIdentifier();
          base = finishNode(ast.memberExpression(base, ".", name));
        }
        if (consume(":")) {
          pushLocation(marker);
          name = parseIdentifier();
          base = finishNode(ast.memberExpression(base, ":", name));
          if (options.scope) scopeIdentifierName("self");
        }
        return base;
      }
      __name(parseFunctionName, "parseFunctionName");
      __name2(parseFunctionName, "parseFunctionName");
      function parseTableConstructor(flowContext) {
        var fields = [], key, value;
        while (true) {
          markLocation();
          if (Punctuator === token.type && consume("[")) {
            key = parseExpectedExpression(flowContext);
            expect("]");
            expect("=");
            value = parseExpectedExpression(flowContext);
            fields.push(finishNode(ast.tableKey(key, value)));
          } else if (Identifier === token.type) {
            if ("=" === lookahead.value) {
              key = parseIdentifier();
              next();
              value = parseExpectedExpression(flowContext);
              fields.push(finishNode(ast.tableKeyString(key, value)));
            } else {
              value = parseExpectedExpression(flowContext);
              fields.push(finishNode(ast.tableValue(value)));
            }
          } else {
            if (null == (value = parseExpression(flowContext))) {
              locations.pop();
              break;
            }
            fields.push(finishNode(ast.tableValue(value)));
          }
          if (",;".indexOf(token.value) >= 0) {
            next();
            continue;
          }
          break;
        }
        expect("}");
        return finishNode(ast.tableConstructorExpression(fields));
      }
      __name(parseTableConstructor, "parseTableConstructor");
      __name2(parseTableConstructor, "parseTableConstructor");
      function parseExpression(flowContext) {
        var expression = parseSubExpression(0, flowContext);
        return expression;
      }
      __name(parseExpression, "parseExpression");
      __name2(parseExpression, "parseExpression");
      function parseExpectedExpression(flowContext) {
        var expression = parseExpression(flowContext);
        if (null == expression) raiseUnexpectedToken("<expression>", token);
        else return expression;
      }
      __name(parseExpectedExpression, "parseExpectedExpression");
      __name2(parseExpectedExpression, "parseExpectedExpression");
      function binaryPrecedence(operator) {
        var charCode = operator.charCodeAt(0), length2 = operator.length;
        if (1 === length2) {
          switch (charCode) {
            case 94:
              return 12;
            // ^
            case 42:
            case 47:
            case 37:
              return 10;
            // * / %
            case 43:
            case 45:
              return 9;
            // + -
            case 38:
              return 6;
            // &
            case 126:
              return 5;
            // ~
            case 124:
              return 4;
            // |
            case 60:
            case 62:
              return 3;
          }
        } else if (2 === length2) {
          switch (charCode) {
            case 47:
              return 10;
            // //
            case 46:
              return 8;
            // ..
            case 60:
            case 62:
              if ("<<" === operator || ">>" === operator) return 7;
              return 3;
            // <= >=
            case 61:
            case 126:
              return 3;
            // == ~=
            case 111:
              return 1;
          }
        } else if (97 === charCode && "and" === operator) return 2;
        return 0;
      }
      __name(binaryPrecedence, "binaryPrecedence");
      __name2(binaryPrecedence, "binaryPrecedence");
      function parseSubExpression(minPrecedence, flowContext) {
        var operator = token.value, expression, marker;
        if (trackLocations) marker = createLocationMarker();
        if (isUnary(token)) {
          markLocation();
          next();
          var argument = parseSubExpression(10, flowContext);
          if (argument == null) raiseUnexpectedToken("<expression>", token);
          expression = finishNode(ast.unaryExpression(operator, argument));
        }
        if (null == expression) {
          expression = parsePrimaryExpression(flowContext);
          if (null == expression) {
            expression = parsePrefixExpression(flowContext);
          }
        }
        if (null == expression) return null;
        var precedence;
        while (true) {
          operator = token.value;
          precedence = Punctuator === token.type || Keyword === token.type ? binaryPrecedence(operator) : 0;
          if (precedence === 0 || precedence <= minPrecedence) break;
          if ("^" === operator || ".." === operator) --precedence;
          next();
          var right = parseSubExpression(precedence, flowContext);
          if (null == right) raiseUnexpectedToken("<expression>", token);
          if (trackLocations) locations.push(marker);
          expression = finishNode(ast.binaryExpression(operator, expression, right));
        }
        return expression;
      }
      __name(parseSubExpression, "parseSubExpression");
      __name2(parseSubExpression, "parseSubExpression");
      function parsePrefixExpressionPart(base, marker, flowContext) {
        var expression, identifier;
        if (Punctuator === token.type) {
          switch (token.value) {
            case "[":
              pushLocation(marker);
              next();
              expression = parseExpectedExpression(flowContext);
              expect("]");
              return finishNode(ast.indexExpression(base, expression));
            case ".":
              pushLocation(marker);
              next();
              identifier = parseIdentifier();
              return finishNode(ast.memberExpression(base, ".", identifier));
            case ":":
              pushLocation(marker);
              next();
              identifier = parseIdentifier();
              base = finishNode(ast.memberExpression(base, ":", identifier));
              pushLocation(marker);
              return parseCallExpression(base, flowContext);
            case "(":
            case "{":
              pushLocation(marker);
              return parseCallExpression(base, flowContext);
          }
        } else if (StringLiteral === token.type) {
          pushLocation(marker);
          return parseCallExpression(base, flowContext);
        }
        return null;
      }
      __name(parsePrefixExpressionPart, "parsePrefixExpressionPart");
      __name2(parsePrefixExpressionPart, "parsePrefixExpressionPart");
      function parsePrefixExpression(flowContext) {
        var base, name, marker;
        if (trackLocations) marker = createLocationMarker();
        if (Identifier === token.type) {
          name = token.value;
          base = parseIdentifier();
          if (options.scope) attachScope(base, scopeHasName(name));
        } else if (consume("(")) {
          base = parseExpectedExpression(flowContext);
          expect(")");
        } else {
          return null;
        }
        for (; ; ) {
          var newBase = parsePrefixExpressionPart(base, marker, flowContext);
          if (newBase === null)
            break;
          base = newBase;
        }
        return base;
      }
      __name(parsePrefixExpression, "parsePrefixExpression");
      __name2(parsePrefixExpression, "parsePrefixExpression");
      function parseCallExpression(base, flowContext) {
        if (Punctuator === token.type) {
          switch (token.value) {
            case "(":
              if (!features.emptyStatement) {
                if (token.line !== previousToken.line)
                  raise(null, errors.ambiguousSyntax, token.value);
              }
              next();
              var expressions = [];
              var expression = parseExpression(flowContext);
              if (null != expression) expressions.push(expression);
              while (consume(",")) {
                expression = parseExpectedExpression(flowContext);
                expressions.push(expression);
              }
              expect(")");
              return finishNode(ast.callExpression(base, expressions));
            case "{":
              markLocation();
              next();
              var table = parseTableConstructor(flowContext);
              return finishNode(ast.tableCallExpression(base, table));
          }
        } else if (StringLiteral === token.type) {
          return finishNode(ast.stringCallExpression(base, parsePrimaryExpression(flowContext)));
        }
        raiseUnexpectedToken("function arguments", token);
      }
      __name(parseCallExpression, "parseCallExpression");
      __name2(parseCallExpression, "parseCallExpression");
      function parsePrimaryExpression(flowContext) {
        var literals = StringLiteral | NumericLiteral | BooleanLiteral | NilLiteral | VarargLiteral, value = token.value, type = token.type, marker;
        if (trackLocations) marker = createLocationMarker();
        if (type === VarargLiteral && !flowContext.allowVararg) {
          raise(token, errors.cannotUseVararg, token.value);
        }
        if (type & literals) {
          pushLocation(marker);
          var raw = input.slice(token.range[0], token.range[1]);
          next();
          return finishNode(ast.literal(type, value, raw));
        } else if (Keyword === type && "function" === value) {
          pushLocation(marker);
          next();
          if (options.scope) createScope();
          return parseFunctionDeclaration(null);
        } else if (consume("{")) {
          pushLocation(marker);
          return parseTableConstructor(flowContext);
        }
      }
      __name(parsePrimaryExpression, "parsePrimaryExpression");
      __name2(parsePrimaryExpression, "parsePrimaryExpression");
      exports2.parse = parse2;
      var versionFeatures = {
        "5.1": {},
        "5.2": {
          labels: true,
          emptyStatement: true,
          hexEscapes: true,
          skipWhitespaceEscape: true,
          strictEscapes: true,
          relaxedBreak: true
        },
        "5.3": {
          labels: true,
          emptyStatement: true,
          hexEscapes: true,
          skipWhitespaceEscape: true,
          strictEscapes: true,
          unicodeEscapes: true,
          bitwiseOperators: true,
          integerDivision: true,
          relaxedBreak: true
        },
        "LuaJIT": {
          // XXX: LuaJIT language features may depend on compilation options; may need to
          // rethink how to handle this. Specifically, there is a LUAJIT_ENABLE_LUA52COMPAT
          // that removes contextual goto. Maybe add 'LuaJIT-5.2compat' as well?
          labels: true,
          contextualGoto: true,
          hexEscapes: true,
          skipWhitespaceEscape: true,
          strictEscapes: true,
          unicodeEscapes: true,
          imaginaryNumbers: true,
          integerSuffixes: true
        }
      };
      function parse2(_input, _options) {
        if ("undefined" === typeof _options && "object" === typeof _input) {
          _options = _input;
          _input = void 0;
        }
        if (!_options) _options = {};
        input = _input || "";
        options = assign({}, defaultOptions, _options);
        index = 0;
        line = 1;
        lineStart = 0;
        length = input.length;
        scopes = [[]];
        scopeDepth = 0;
        globals = [];
        locations = [];
        if (!Object.prototype.hasOwnProperty.call(versionFeatures, options.luaVersion)) {
          throw new Error(sprintf("Lua version '%1' not supported", options.luaVersion));
        }
        features = assign({}, versionFeatures[options.luaVersion]);
        if (options.extendedIdentifiers !== void 0)
          features.extendedIdentifiers = !!options.extendedIdentifiers;
        if (!Object.prototype.hasOwnProperty.call(encodingModes, options.encodingMode)) {
          throw new Error(sprintf("Encoding mode '%1' not supported", options.encodingMode));
        }
        encodingMode = encodingModes[options.encodingMode];
        if (options.comments) comments = [];
        if (!options.wait) return end();
        return exports2;
      }
      __name(parse2, "parse2");
      __name2(parse2, "parse");
      exports2.write = write;
      function write(_input) {
        input += String(_input);
        length = input.length;
        return exports2;
      }
      __name(write, "write");
      __name2(write, "write");
      exports2.end = end;
      function end(_input) {
        if ("undefined" !== typeof _input) write(_input);
        if (input && input.substr(0, 2) === "#!") input = input.replace(/^.*/, function(line2) {
          return line2.replace(/./g, " ");
        });
        length = input.length;
        trackLocations = options.locations || options.ranges;
        lookahead = lex();
        var chunk = parseChunk();
        if (options.comments) chunk.comments = comments;
        if (options.scope) chunk.globals = globals;
        if (locations.length > 0)
          throw new Error("Location tracking failed. This is most likely a bug in luaparse");
        return chunk;
      }
      __name(end, "end");
      __name2(end, "end");
    });
  }
});
async function loadAllModules(baseUrl) {
  const modulePromises = Object.entries(fandomModules).map(async ([name, moduleName]) => {
    const url = `${baseUrl}/api/fandom-module?module=${encodeURIComponent(moduleName)}&wiki=ronroblox`;
    try {
      const response = await fetch(url);
      if (!response.ok) {
        throw new Error(`fandom-module returned ${response.status}`);
      }
      const data = await response.json();
      return [name, data.source];
    } catch (error) {
      console.error(`Error fetching ${name}:`, error);
      throw error;
    }
  });
  const moduleEntries = await Promise.all(modulePromises);
  return Object.fromEntries(moduleEntries);
}
__name(loadAllModules, "loadAllModules");
async function extractValue(node) {
  if (!node) return null;
  switch (node.type) {
    case "StringLiteral":
      let stringValue = null;
      if (node.value !== null) stringValue = node.value;
      else if (node.raw) {
        stringValue = node.raw.slice(1, -1);
      }
      return stringValue;
    case "NumericLiteral":
      return node.value;
    case "BooleanLiteral":
      return node.value;
    case "NilLiteral":
      return null;
    case "BinaryExpression":
      const left = await extractValue(node.left);
      const right = await extractValue(node.right);
      if (typeof left === "number" && typeof right === "number") {
        switch (node.operator) {
          case "+":
            return left + right;
          case "-":
            return left - right;
          case "*":
            return left * right;
          case "/":
            return left / right;
          case "%":
            return left % right;
          case "^":
            return Math.pow(left, right);
          default:
            return null;
        }
      }
      return null;
    case "TableConstructorExpression":
      return await extractTable(node);
    default:
      return null;
  }
}
__name(extractValue, "extractValue");
async function extractTable(tableNode) {
  const obj = {};
  for (const field of tableNode.fields) {
    let key, value;
    if (field.type === "TableKey") {
      key = await extractValue(field.key);
      value = await extractValue(field.value);
      obj[key] = value;
    } else if (field.type === "TableKeyString") {
      key = field.key.name;
      value = await extractValue(field.value);
      obj[key] = value;
    } else if (field.type === "TableValue") {
      obj[tableNode.fields.indexOf(field) + 1] = await extractValue(field.value);
    }
  }
  return obj;
}
__name(extractTable, "extractTable");
async function getFandomData(baseUrl = "") {
  const allModules = await loadAllModules(baseUrl);
  const extractedData = {};
  for (const [name, source] of Object.entries(allModules)) {
    try {
      const ast = import_luaparse.default.parse(source);
      extractedData[name] = await extractDataFromAST(ast);
    } catch (error) {
      console.error(`Error parsing ${name}:`, error);
    }
  }
  return extractedData;
}
__name(getFandomData, "getFandomData");
async function extractDataFromAST(ast) {
  const result = {};
  for (const statement of ast.body) {
    if (statement.type === "AssignmentStatement" || statement.type === "LocalStatement") {
      const varName = statement.variables[0].name;
      const value = await extractValue(statement.init[0]);
      result[varName] = value;
    }
  }
  return result;
}
__name(extractDataFromAST, "extractDataFromAST");
var import_luaparse;
var fandomModules;
var init_fandomProcessor = __esm({
  "../fandomProcessor.js"() {
    init_functionsRoutes_0_27951557217036604();
    import_luaparse = __toESM(require_luaparse());
    fandomModules = {
      Lawnames: "Lawnames",
      Flagdata: "Flagdata",
      Nationdata: "Nationdata",
      Tagdata: "Tagdata"
    };
    __name2(loadAllModules, "loadAllModules");
    __name2(extractValue, "extractValue");
    __name2(extractTable, "extractTable");
    __name2(getFandomData, "getFandomData");
    __name2(extractDataFromAST, "extractDataFromAST");
  }
});
async function onRequest(context) {
  try {
    if (cachedFandomData && cacheTime && Date.now() - cacheTime < CACHE_DURATION) {
      return new Response(JSON.stringify(cachedFandomData), {
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*"
        }
      });
    }
    const origin = new URL(context.request.url).origin;
    cachedFandomData = await getFandomData(origin);
    cacheTime = Date.now();
    return new Response(JSON.stringify(cachedFandomData), {
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  } catch (error) {
    console.error("Error in fandom-data endpoint:", error);
    return new Response(JSON.stringify({ error: error.message }), {
      status: 500,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  }
}
__name(onRequest, "onRequest");
var cachedFandomData;
var cacheTime;
var CACHE_DURATION;
var init_fandom_data = __esm({
  "api/fandom-data.js"() {
    init_functionsRoutes_0_27951557217036604();
    init_fandomProcessor();
    cachedFandomData = null;
    cacheTime = null;
    CACHE_DURATION = 5 * 60 * 1e3;
    __name2(onRequest, "onRequest");
  }
});
async function onRequest2(context) {
  const { request } = context;
  const url = new URL(request.url);
  if (request.method === "OPTIONS") {
    return new Response(null, {
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type"
      }
    });
  }
  const filename = url.searchParams.get("filename");
  if (!filename) {
    return new Response(JSON.stringify({ error: "filename parameter required" }), {
      status: 400,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  }
  try {
    const fandomApiUrl = `https://ronroblox.fandom.com/rest.php/v1/file/File:${encodeURIComponent(filename)}`;
    const response = await fetch(fandomApiUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
        "Accept": "application/json"
      },
      cf: {
        cacheTtl: 3600,
        cacheEverything: true
      }
    });
    if (!response.ok) {
      const body = await response.text();
      console.error(`Fandom API error body: ${body.slice(0, 500)}`);
      throw new Error(`Fandom API returned ${response.status}`);
    }
    const data = await response.json();
    if (data.preferred && data.preferred.url) {
      return new Response(JSON.stringify({
        url: data.preferred.url,
        width: data.preferred.width,
        height: data.preferred.height,
        mediatype: data.preferred.mediatype
      }), {
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Cache-Control": "public, max-age=3600"
        }
      });
    } else {
      throw new Error("Preferred URL not found in response");
    }
  } catch (error) {
    console.error(`Error fetching Fandom image for ${filename}:`, error);
    return new Response(JSON.stringify({
      error: error.message,
      filename
    }), {
      status: 500,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  }
}
__name(onRequest2, "onRequest2");
var init_fandom_image = __esm({
  "api/fandom-image.js"() {
    init_functionsRoutes_0_27951557217036604();
    __name2(onRequest2, "onRequest");
  }
});
async function onRequest3(context) {
  const { request, env } = context;
  const url = new URL(request.url);
  const moduleName = url.searchParams.get("module");
  if (!moduleName) {
    return new Response(JSON.stringify({ error: "Module name is required" }), {
      status: 400,
      headers: { "Content-Type": "application/json" }
    });
  }
  try {
    const result = await fetchWithFallback(moduleName);
    return new Response(JSON.stringify(result), {
      headers: {
        "Content-Type": "application/json",
        "Cache-Control": "public, max-age=3600",
        "X-Cache": "MISS"
      }
    });
  } catch (error) {
    console.error("Error fetching Fandom module:", error);
    return new Response(JSON.stringify({
      error: error.message,
      module: moduleName
    }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }
}
__name(onRequest3, "onRequest3");
async function fetchWithFallback(moduleName) {
  try {
    const primaryUrl = `https://ronroblox.fandom.com/rest.php/v1/page/Module%3A${encodeURIComponent(moduleName)}`;
    const primaryResponse = await fetch(primaryUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
        "Accept": "application/json"
      },
      cf: {
        cacheTtl: 3600,
        cacheEverything: true
      }
    });
    if (!primaryResponse.ok) {
      throw new Error(`Primary API returned ${primaryResponse.status}`);
    }
    const data = await primaryResponse.json();
    return {
      module: moduleName,
      source: data.source,
      timestamp: data.latest?.timestamp
    };
  } catch (primaryError) {
    console.warn(`Primary API failed for "${moduleName}", trying Backup:`, primaryError.message);
    const fallbackUrl = `https://ronroblox.fandom.com/api.php?action=query&prop=revisions&titles=Module%3A${encodeURIComponent(moduleName)}&rvslots=main&rvprop=content&format=json`;
    const fallbackResponse = await fetch(fallbackUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
        "Accept": "application/json"
      },
      cf: {
        cacheTtl: 3600,
        cacheEverything: true
      }
    });
    if (!fallbackResponse.ok) {
      throw new Error(`Fallback API also failed with ${fallbackResponse.status}`);
    }
    const fallbackData = await fallbackResponse.json();
    const pages = fallbackData?.query?.pages;
    if (!pages) {
      throw new Error("Fallback API returned unexpected structure");
    }
    const page = Object.values(pages)[0];
    const source = page?.revisions?.[0]?.slots?.main?.["*"];
    if (!source) {
      throw new Error(`No content found in backup api response for module "${moduleName}"`);
    }
    return {
      module: moduleName,
      source,
      timestamp: null
    };
  }
}
__name(fetchWithFallback, "fetchWithFallback");
var init_fandom_module = __esm({
  "api/fandom-module.js"() {
    init_functionsRoutes_0_27951557217036604();
    __name2(onRequest3, "onRequest");
    __name2(fetchWithFallback, "fetchWithFallback");
  }
});
async function onRequest4(context) {
  const { request } = context;
  const url = new URL(request.url);
  if (request.method === "OPTIONS") {
    return new Response(null, {
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type"
      }
    });
  }
  const imageID = url.searchParams.get("assetid");
  const size = url.searchParams.get("size") || "700x700";
  if (!imageID) {
    return new Response(JSON.stringify({ error: "assetid parameter required" }), {
      status: 400,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  }
  try {
    const robloxThumbnailApiUrl = `https://thumbnails.roblox.com/v1/assets?assetIds=${encodeURIComponent(imageID)}&size=${encodeURIComponent(size)}&format=Png&isCircular=false`;
    const response = await fetch(robloxThumbnailApiUrl);
    if (!response.ok) {
      throw new Error(`Roblox API returned ${response.status}`);
    }
    const data = await response.json();
    if (data.data && data.data[0] && data.data[0].imageUrl) {
      return new Response(JSON.stringify({
        imageUrl: data.data[0].imageUrl,
        fullData: data
      }), {
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Cache-Control": "public, max-age=3600"
          // Cache for 1 hour
        }
      });
    } else {
      throw new Error("Preferred URL not found in response");
    }
  } catch (error) {
    console.error(`Error fetching Roblox Thumbnail image for ${imageID}:`, error);
    return new Response(JSON.stringify({
      error: error.message,
      imageID
    }), {
      status: 500,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  }
}
__name(onRequest4, "onRequest4");
var init_roblox_thumbnail = __esm({
  "api/roblox-thumbnail.js"() {
    init_functionsRoutes_0_27951557217036604();
    __name2(onRequest4, "onRequest");
  }
});
var routes;
var init_functionsRoutes_0_27951557217036604 = __esm({
  "../.wrangler/tmp/pages-bGx89D/functionsRoutes-0.27951557217036604.mjs"() {
    init_fandom_data();
    init_fandom_image();
    init_fandom_module();
    init_roblox_thumbnail();
    routes = [
      {
        routePath: "/api/fandom-data",
        mountPath: "/api",
        method: "",
        middlewares: [],
        modules: [onRequest]
      },
      {
        routePath: "/api/fandom-image",
        mountPath: "/api",
        method: "",
        middlewares: [],
        modules: [onRequest2]
      },
      {
        routePath: "/api/fandom-module",
        mountPath: "/api",
        method: "",
        middlewares: [],
        modules: [onRequest3]
      },
      {
        routePath: "/api/roblox-thumbnail",
        mountPath: "/api",
        method: "",
        middlewares: [],
        modules: [onRequest4]
      }
    ];
  }
});
init_functionsRoutes_0_27951557217036604();
init_functionsRoutes_0_27951557217036604();
init_functionsRoutes_0_27951557217036604();
init_functionsRoutes_0_27951557217036604();
function lexer(str) {
  var tokens = [];
  var i = 0;
  while (i < str.length) {
    var char = str[i];
    if (char === "*" || char === "+" || char === "?") {
      tokens.push({ type: "MODIFIER", index: i, value: str[i++] });
      continue;
    }
    if (char === "\\") {
      tokens.push({ type: "ESCAPED_CHAR", index: i++, value: str[i++] });
      continue;
    }
    if (char === "{") {
      tokens.push({ type: "OPEN", index: i, value: str[i++] });
      continue;
    }
    if (char === "}") {
      tokens.push({ type: "CLOSE", index: i, value: str[i++] });
      continue;
    }
    if (char === ":") {
      var name = "";
      var j = i + 1;
      while (j < str.length) {
        var code = str.charCodeAt(j);
        if (
          // `0-9`
          code >= 48 && code <= 57 || // `A-Z`
          code >= 65 && code <= 90 || // `a-z`
          code >= 97 && code <= 122 || // `_`
          code === 95
        ) {
          name += str[j++];
          continue;
        }
        break;
      }
      if (!name)
        throw new TypeError("Missing parameter name at ".concat(i));
      tokens.push({ type: "NAME", index: i, value: name });
      i = j;
      continue;
    }
    if (char === "(") {
      var count = 1;
      var pattern = "";
      var j = i + 1;
      if (str[j] === "?") {
        throw new TypeError('Pattern cannot start with "?" at '.concat(j));
      }
      while (j < str.length) {
        if (str[j] === "\\") {
          pattern += str[j++] + str[j++];
          continue;
        }
        if (str[j] === ")") {
          count--;
          if (count === 0) {
            j++;
            break;
          }
        } else if (str[j] === "(") {
          count++;
          if (str[j + 1] !== "?") {
            throw new TypeError("Capturing groups are not allowed at ".concat(j));
          }
        }
        pattern += str[j++];
      }
      if (count)
        throw new TypeError("Unbalanced pattern at ".concat(i));
      if (!pattern)
        throw new TypeError("Missing pattern at ".concat(i));
      tokens.push({ type: "PATTERN", index: i, value: pattern });
      i = j;
      continue;
    }
    tokens.push({ type: "CHAR", index: i, value: str[i++] });
  }
  tokens.push({ type: "END", index: i, value: "" });
  return tokens;
}
__name(lexer, "lexer");
__name2(lexer, "lexer");
function parse(str, options) {
  if (options === void 0) {
    options = {};
  }
  var tokens = lexer(str);
  var _a = options.prefixes, prefixes = _a === void 0 ? "./" : _a, _b = options.delimiter, delimiter = _b === void 0 ? "/#?" : _b;
  var result = [];
  var key = 0;
  var i = 0;
  var path = "";
  var tryConsume = /* @__PURE__ */ __name2(function(type) {
    if (i < tokens.length && tokens[i].type === type)
      return tokens[i++].value;
  }, "tryConsume");
  var mustConsume = /* @__PURE__ */ __name2(function(type) {
    var value2 = tryConsume(type);
    if (value2 !== void 0)
      return value2;
    var _a2 = tokens[i], nextType = _a2.type, index = _a2.index;
    throw new TypeError("Unexpected ".concat(nextType, " at ").concat(index, ", expected ").concat(type));
  }, "mustConsume");
  var consumeText = /* @__PURE__ */ __name2(function() {
    var result2 = "";
    var value2;
    while (value2 = tryConsume("CHAR") || tryConsume("ESCAPED_CHAR")) {
      result2 += value2;
    }
    return result2;
  }, "consumeText");
  var isSafe = /* @__PURE__ */ __name2(function(value2) {
    for (var _i = 0, delimiter_1 = delimiter; _i < delimiter_1.length; _i++) {
      var char2 = delimiter_1[_i];
      if (value2.indexOf(char2) > -1)
        return true;
    }
    return false;
  }, "isSafe");
  var safePattern = /* @__PURE__ */ __name2(function(prefix2) {
    var prev = result[result.length - 1];
    var prevText = prefix2 || (prev && typeof prev === "string" ? prev : "");
    if (prev && !prevText) {
      throw new TypeError('Must have text between two parameters, missing text after "'.concat(prev.name, '"'));
    }
    if (!prevText || isSafe(prevText))
      return "[^".concat(escapeString(delimiter), "]+?");
    return "(?:(?!".concat(escapeString(prevText), ")[^").concat(escapeString(delimiter), "])+?");
  }, "safePattern");
  while (i < tokens.length) {
    var char = tryConsume("CHAR");
    var name = tryConsume("NAME");
    var pattern = tryConsume("PATTERN");
    if (name || pattern) {
      var prefix = char || "";
      if (prefixes.indexOf(prefix) === -1) {
        path += prefix;
        prefix = "";
      }
      if (path) {
        result.push(path);
        path = "";
      }
      result.push({
        name: name || key++,
        prefix,
        suffix: "",
        pattern: pattern || safePattern(prefix),
        modifier: tryConsume("MODIFIER") || ""
      });
      continue;
    }
    var value = char || tryConsume("ESCAPED_CHAR");
    if (value) {
      path += value;
      continue;
    }
    if (path) {
      result.push(path);
      path = "";
    }
    var open = tryConsume("OPEN");
    if (open) {
      var prefix = consumeText();
      var name_1 = tryConsume("NAME") || "";
      var pattern_1 = tryConsume("PATTERN") || "";
      var suffix = consumeText();
      mustConsume("CLOSE");
      result.push({
        name: name_1 || (pattern_1 ? key++ : ""),
        pattern: name_1 && !pattern_1 ? safePattern(prefix) : pattern_1,
        prefix,
        suffix,
        modifier: tryConsume("MODIFIER") || ""
      });
      continue;
    }
    mustConsume("END");
  }
  return result;
}
__name(parse, "parse");
__name2(parse, "parse");
function match(str, options) {
  var keys = [];
  var re = pathToRegexp(str, keys, options);
  return regexpToFunction(re, keys, options);
}
__name(match, "match");
__name2(match, "match");
function regexpToFunction(re, keys, options) {
  if (options === void 0) {
    options = {};
  }
  var _a = options.decode, decode = _a === void 0 ? function(x) {
    return x;
  } : _a;
  return function(pathname) {
    var m = re.exec(pathname);
    if (!m)
      return false;
    var path = m[0], index = m.index;
    var params = /* @__PURE__ */ Object.create(null);
    var _loop_1 = /* @__PURE__ */ __name2(function(i2) {
      if (m[i2] === void 0)
        return "continue";
      var key = keys[i2 - 1];
      if (key.modifier === "*" || key.modifier === "+") {
        params[key.name] = m[i2].split(key.prefix + key.suffix).map(function(value) {
          return decode(value, key);
        });
      } else {
        params[key.name] = decode(m[i2], key);
      }
    }, "_loop_1");
    for (var i = 1; i < m.length; i++) {
      _loop_1(i);
    }
    return { path, index, params };
  };
}
__name(regexpToFunction, "regexpToFunction");
__name2(regexpToFunction, "regexpToFunction");
function escapeString(str) {
  return str.replace(/([.+*?=^!:${}()[\]|/\\])/g, "\\$1");
}
__name(escapeString, "escapeString");
__name2(escapeString, "escapeString");
function flags(options) {
  return options && options.sensitive ? "" : "i";
}
__name(flags, "flags");
__name2(flags, "flags");
function regexpToRegexp(path, keys) {
  if (!keys)
    return path;
  var groupsRegex = /\((?:\?<(.*?)>)?(?!\?)/g;
  var index = 0;
  var execResult = groupsRegex.exec(path.source);
  while (execResult) {
    keys.push({
      // Use parenthesized substring match if available, index otherwise
      name: execResult[1] || index++,
      prefix: "",
      suffix: "",
      modifier: "",
      pattern: ""
    });
    execResult = groupsRegex.exec(path.source);
  }
  return path;
}
__name(regexpToRegexp, "regexpToRegexp");
__name2(regexpToRegexp, "regexpToRegexp");
function arrayToRegexp(paths, keys, options) {
  var parts = paths.map(function(path) {
    return pathToRegexp(path, keys, options).source;
  });
  return new RegExp("(?:".concat(parts.join("|"), ")"), flags(options));
}
__name(arrayToRegexp, "arrayToRegexp");
__name2(arrayToRegexp, "arrayToRegexp");
function stringToRegexp(path, keys, options) {
  return tokensToRegexp(parse(path, options), keys, options);
}
__name(stringToRegexp, "stringToRegexp");
__name2(stringToRegexp, "stringToRegexp");
function tokensToRegexp(tokens, keys, options) {
  if (options === void 0) {
    options = {};
  }
  var _a = options.strict, strict = _a === void 0 ? false : _a, _b = options.start, start = _b === void 0 ? true : _b, _c = options.end, end = _c === void 0 ? true : _c, _d = options.encode, encode = _d === void 0 ? function(x) {
    return x;
  } : _d, _e = options.delimiter, delimiter = _e === void 0 ? "/#?" : _e, _f = options.endsWith, endsWith = _f === void 0 ? "" : _f;
  var endsWithRe = "[".concat(escapeString(endsWith), "]|$");
  var delimiterRe = "[".concat(escapeString(delimiter), "]");
  var route = start ? "^" : "";
  for (var _i = 0, tokens_1 = tokens; _i < tokens_1.length; _i++) {
    var token = tokens_1[_i];
    if (typeof token === "string") {
      route += escapeString(encode(token));
    } else {
      var prefix = escapeString(encode(token.prefix));
      var suffix = escapeString(encode(token.suffix));
      if (token.pattern) {
        if (keys)
          keys.push(token);
        if (prefix || suffix) {
          if (token.modifier === "+" || token.modifier === "*") {
            var mod = token.modifier === "*" ? "?" : "";
            route += "(?:".concat(prefix, "((?:").concat(token.pattern, ")(?:").concat(suffix).concat(prefix, "(?:").concat(token.pattern, "))*)").concat(suffix, ")").concat(mod);
          } else {
            route += "(?:".concat(prefix, "(").concat(token.pattern, ")").concat(suffix, ")").concat(token.modifier);
          }
        } else {
          if (token.modifier === "+" || token.modifier === "*") {
            throw new TypeError('Can not repeat "'.concat(token.name, '" without a prefix and suffix'));
          }
          route += "(".concat(token.pattern, ")").concat(token.modifier);
        }
      } else {
        route += "(?:".concat(prefix).concat(suffix, ")").concat(token.modifier);
      }
    }
  }
  if (end) {
    if (!strict)
      route += "".concat(delimiterRe, "?");
    route += !options.endsWith ? "$" : "(?=".concat(endsWithRe, ")");
  } else {
    var endToken = tokens[tokens.length - 1];
    var isEndDelimited = typeof endToken === "string" ? delimiterRe.indexOf(endToken[endToken.length - 1]) > -1 : endToken === void 0;
    if (!strict) {
      route += "(?:".concat(delimiterRe, "(?=").concat(endsWithRe, "))?");
    }
    if (!isEndDelimited) {
      route += "(?=".concat(delimiterRe, "|").concat(endsWithRe, ")");
    }
  }
  return new RegExp(route, flags(options));
}
__name(tokensToRegexp, "tokensToRegexp");
__name2(tokensToRegexp, "tokensToRegexp");
function pathToRegexp(path, keys, options) {
  if (path instanceof RegExp)
    return regexpToRegexp(path, keys);
  if (Array.isArray(path))
    return arrayToRegexp(path, keys, options);
  return stringToRegexp(path, keys, options);
}
__name(pathToRegexp, "pathToRegexp");
__name2(pathToRegexp, "pathToRegexp");
var escapeRegex = /[.+?^${}()|[\]\\]/g;
function* executeRequest(request) {
  const requestPath = new URL(request.url).pathname;
  for (const route of [...routes].reverse()) {
    if (route.method && route.method !== request.method) {
      continue;
    }
    const routeMatcher = match(route.routePath.replace(escapeRegex, "\\$&"), {
      end: false
    });
    const mountMatcher = match(route.mountPath.replace(escapeRegex, "\\$&"), {
      end: false
    });
    const matchResult = routeMatcher(requestPath);
    const mountMatchResult = mountMatcher(requestPath);
    if (matchResult && mountMatchResult) {
      for (const handler of route.middlewares.flat()) {
        yield {
          handler,
          params: matchResult.params,
          path: mountMatchResult.path
        };
      }
    }
  }
  for (const route of routes) {
    if (route.method && route.method !== request.method) {
      continue;
    }
    const routeMatcher = match(route.routePath.replace(escapeRegex, "\\$&"), {
      end: true
    });
    const mountMatcher = match(route.mountPath.replace(escapeRegex, "\\$&"), {
      end: false
    });
    const matchResult = routeMatcher(requestPath);
    const mountMatchResult = mountMatcher(requestPath);
    if (matchResult && mountMatchResult && route.modules.length) {
      for (const handler of route.modules.flat()) {
        yield {
          handler,
          params: matchResult.params,
          path: matchResult.path
        };
      }
      break;
    }
  }
}
__name(executeRequest, "executeRequest");
__name2(executeRequest, "executeRequest");
var pages_template_worker_default = {
  async fetch(originalRequest, env, workerContext) {
    let request = originalRequest;
    const handlerIterator = executeRequest(request);
    let data = {};
    let isFailOpen = false;
    const next = /* @__PURE__ */ __name2(async (input, init) => {
      if (input !== void 0) {
        let url = input;
        if (typeof input === "string") {
          url = new URL(input, request.url).toString();
        }
        request = new Request(url, init);
      }
      const result = handlerIterator.next();
      if (result.done === false) {
        const { handler, params, path } = result.value;
        const context = {
          request: new Request(request.clone()),
          functionPath: path,
          next,
          params,
          get data() {
            return data;
          },
          set data(value) {
            if (typeof value !== "object" || value === null) {
              throw new Error("context.data must be an object");
            }
            data = value;
          },
          env,
          waitUntil: workerContext.waitUntil.bind(workerContext),
          passThroughOnException: /* @__PURE__ */ __name2(() => {
            isFailOpen = true;
          }, "passThroughOnException")
        };
        const response = await handler(context);
        if (!(response instanceof Response)) {
          throw new Error("Your Pages function should return a Response");
        }
        return cloneResponse(response);
      } else if ("ASSETS") {
        const response = await env["ASSETS"].fetch(request);
        return cloneResponse(response);
      } else {
        const response = await fetch(request);
        return cloneResponse(response);
      }
    }, "next");
    try {
      return await next();
    } catch (error) {
      if (isFailOpen) {
        const response = await env["ASSETS"].fetch(request);
        return cloneResponse(response);
      }
      throw error;
    }
  }
};
var cloneResponse = /* @__PURE__ */ __name2((response) => (
  // https://fetch.spec.whatwg.org/#null-body-status
  new Response(
    [101, 204, 205, 304].includes(response.status) ? null : response.body,
    response
  )
), "cloneResponse");
init_functionsRoutes_0_27951557217036604();
var drainBody = /* @__PURE__ */ __name2(async (request, env, _ctx, middlewareCtx) => {
  try {
    return await middlewareCtx.next(request, env);
  } finally {
    try {
      if (request.body !== null && !request.bodyUsed) {
        const reader = request.body.getReader();
        while (!(await reader.read()).done) {
        }
      }
    } catch (e) {
      console.error("Failed to drain the unused request body.", e);
    }
  }
}, "drainBody");
var middleware_ensure_req_body_drained_default = drainBody;
init_functionsRoutes_0_27951557217036604();
function reduceError(e) {
  return {
    name: e?.name,
    message: e?.message ?? String(e),
    stack: e?.stack,
    cause: e?.cause === void 0 ? void 0 : reduceError(e.cause)
  };
}
__name(reduceError, "reduceError");
__name2(reduceError, "reduceError");
var jsonError = /* @__PURE__ */ __name2(async (request, env, _ctx, middlewareCtx) => {
  try {
    return await middlewareCtx.next(request, env);
  } catch (e) {
    const error = reduceError(e);
    return Response.json(error, {
      status: 500,
      headers: { "MF-Experimental-Error-Stack": "true" }
    });
  }
}, "jsonError");
var middleware_miniflare3_json_error_default = jsonError;
var __INTERNAL_WRANGLER_MIDDLEWARE__ = [
  middleware_ensure_req_body_drained_default,
  middleware_miniflare3_json_error_default
];
var middleware_insertion_facade_default = pages_template_worker_default;
init_functionsRoutes_0_27951557217036604();
var __facade_middleware__ = [];
function __facade_register__(...args) {
  __facade_middleware__.push(...args.flat());
}
__name(__facade_register__, "__facade_register__");
__name2(__facade_register__, "__facade_register__");
function __facade_invokeChain__(request, env, ctx, dispatch, middlewareChain) {
  const [head, ...tail] = middlewareChain;
  const middlewareCtx = {
    dispatch,
    next(newRequest, newEnv) {
      return __facade_invokeChain__(newRequest, newEnv, ctx, dispatch, tail);
    }
  };
  return head(request, env, ctx, middlewareCtx);
}
__name(__facade_invokeChain__, "__facade_invokeChain__");
__name2(__facade_invokeChain__, "__facade_invokeChain__");
function __facade_invoke__(request, env, ctx, dispatch, finalMiddleware) {
  return __facade_invokeChain__(request, env, ctx, dispatch, [
    ...__facade_middleware__,
    finalMiddleware
  ]);
}
__name(__facade_invoke__, "__facade_invoke__");
__name2(__facade_invoke__, "__facade_invoke__");
var __Facade_ScheduledController__ = class ___Facade_ScheduledController__ {
  static {
    __name(this, "___Facade_ScheduledController__");
  }
  constructor(scheduledTime, cron, noRetry) {
    this.scheduledTime = scheduledTime;
    this.cron = cron;
    this.#noRetry = noRetry;
  }
  static {
    __name2(this, "__Facade_ScheduledController__");
  }
  #noRetry;
  noRetry() {
    if (!(this instanceof ___Facade_ScheduledController__)) {
      throw new TypeError("Illegal invocation");
    }
    this.#noRetry();
  }
};
function wrapExportedHandler(worker) {
  if (__INTERNAL_WRANGLER_MIDDLEWARE__ === void 0 || __INTERNAL_WRANGLER_MIDDLEWARE__.length === 0) {
    return worker;
  }
  for (const middleware of __INTERNAL_WRANGLER_MIDDLEWARE__) {
    __facade_register__(middleware);
  }
  const fetchDispatcher = /* @__PURE__ */ __name2(function(request, env, ctx) {
    if (worker.fetch === void 0) {
      throw new Error("Handler does not export a fetch() function.");
    }
    return worker.fetch(request, env, ctx);
  }, "fetchDispatcher");
  return {
    ...worker,
    fetch(request, env, ctx) {
      const dispatcher = /* @__PURE__ */ __name2(function(type, init) {
        if (type === "scheduled" && worker.scheduled !== void 0) {
          const controller = new __Facade_ScheduledController__(
            Date.now(),
            init.cron ?? "",
            () => {
            }
          );
          return worker.scheduled(controller, env, ctx);
        }
      }, "dispatcher");
      return __facade_invoke__(request, env, ctx, dispatcher, fetchDispatcher);
    }
  };
}
__name(wrapExportedHandler, "wrapExportedHandler");
__name2(wrapExportedHandler, "wrapExportedHandler");
function wrapWorkerEntrypoint(klass) {
  if (__INTERNAL_WRANGLER_MIDDLEWARE__ === void 0 || __INTERNAL_WRANGLER_MIDDLEWARE__.length === 0) {
    return klass;
  }
  for (const middleware of __INTERNAL_WRANGLER_MIDDLEWARE__) {
    __facade_register__(middleware);
  }
  return class extends klass {
    #fetchDispatcher = /* @__PURE__ */ __name2((request, env, ctx) => {
      this.env = env;
      this.ctx = ctx;
      if (super.fetch === void 0) {
        throw new Error("Entrypoint class does not define a fetch() function.");
      }
      return super.fetch(request);
    }, "#fetchDispatcher");
    #dispatcher = /* @__PURE__ */ __name2((type, init) => {
      if (type === "scheduled" && super.scheduled !== void 0) {
        const controller = new __Facade_ScheduledController__(
          Date.now(),
          init.cron ?? "",
          () => {
          }
        );
        return super.scheduled(controller);
      }
    }, "#dispatcher");
    fetch(request) {
      return __facade_invoke__(
        request,
        this.env,
        this.ctx,
        this.#dispatcher,
        this.#fetchDispatcher
      );
    }
  };
}
__name(wrapWorkerEntrypoint, "wrapWorkerEntrypoint");
__name2(wrapWorkerEntrypoint, "wrapWorkerEntrypoint");
var WRAPPED_ENTRY;
if (typeof middleware_insertion_facade_default === "object") {
  WRAPPED_ENTRY = wrapExportedHandler(middleware_insertion_facade_default);
} else if (typeof middleware_insertion_facade_default === "function") {
  WRAPPED_ENTRY = wrapWorkerEntrypoint(middleware_insertion_facade_default);
}
var middleware_loader_entry_default = WRAPPED_ENTRY;

// node_modules/wrangler/templates/middleware/middleware-ensure-req-body-drained.ts
var drainBody2 = /* @__PURE__ */ __name(async (request, env, _ctx, middlewareCtx) => {
  try {
    return await middlewareCtx.next(request, env);
  } finally {
    try {
      if (request.body !== null && !request.bodyUsed) {
        const reader = request.body.getReader();
        while (!(await reader.read()).done) {
        }
      }
    } catch (e) {
      console.error("Failed to drain the unused request body.", e);
    }
  }
}, "drainBody");
var middleware_ensure_req_body_drained_default2 = drainBody2;

// node_modules/wrangler/templates/middleware/middleware-miniflare3-json-error.ts
function reduceError2(e) {
  return {
    name: e?.name,
    message: e?.message ?? String(e),
    stack: e?.stack,
    cause: e?.cause === void 0 ? void 0 : reduceError2(e.cause)
  };
}
__name(reduceError2, "reduceError");
var jsonError2 = /* @__PURE__ */ __name(async (request, env, _ctx, middlewareCtx) => {
  try {
    return await middlewareCtx.next(request, env);
  } catch (e) {
    const error = reduceError2(e);
    return Response.json(error, {
      status: 500,
      headers: { "MF-Experimental-Error-Stack": "true" }
    });
  }
}, "jsonError");
var middleware_miniflare3_json_error_default2 = jsonError2;

// .wrangler/tmp/bundle-z6XDRu/middleware-insertion-facade.js
var __INTERNAL_WRANGLER_MIDDLEWARE__2 = [
  middleware_ensure_req_body_drained_default2,
  middleware_miniflare3_json_error_default2
];
var middleware_insertion_facade_default2 = middleware_loader_entry_default;

// node_modules/wrangler/templates/middleware/common.ts
var __facade_middleware__2 = [];
function __facade_register__2(...args) {
  __facade_middleware__2.push(...args.flat());
}
__name(__facade_register__2, "__facade_register__");
function __facade_invokeChain__2(request, env, ctx, dispatch, middlewareChain) {
  const [head, ...tail] = middlewareChain;
  const middlewareCtx = {
    dispatch,
    next(newRequest, newEnv) {
      return __facade_invokeChain__2(newRequest, newEnv, ctx, dispatch, tail);
    }
  };
  return head(request, env, ctx, middlewareCtx);
}
__name(__facade_invokeChain__2, "__facade_invokeChain__");
function __facade_invoke__2(request, env, ctx, dispatch, finalMiddleware) {
  return __facade_invokeChain__2(request, env, ctx, dispatch, [
    ...__facade_middleware__2,
    finalMiddleware
  ]);
}
__name(__facade_invoke__2, "__facade_invoke__");

// .wrangler/tmp/bundle-z6XDRu/middleware-loader.entry.ts
var __Facade_ScheduledController__2 = class ___Facade_ScheduledController__2 {
  constructor(scheduledTime, cron, noRetry) {
    this.scheduledTime = scheduledTime;
    this.cron = cron;
    this.#noRetry = noRetry;
  }
  static {
    __name(this, "__Facade_ScheduledController__");
  }
  #noRetry;
  noRetry() {
    if (!(this instanceof ___Facade_ScheduledController__2)) {
      throw new TypeError("Illegal invocation");
    }
    this.#noRetry();
  }
};
function wrapExportedHandler2(worker) {
  if (__INTERNAL_WRANGLER_MIDDLEWARE__2 === void 0 || __INTERNAL_WRANGLER_MIDDLEWARE__2.length === 0) {
    return worker;
  }
  for (const middleware of __INTERNAL_WRANGLER_MIDDLEWARE__2) {
    __facade_register__2(middleware);
  }
  const fetchDispatcher = /* @__PURE__ */ __name(function(request, env, ctx) {
    if (worker.fetch === void 0) {
      throw new Error("Handler does not export a fetch() function.");
    }
    return worker.fetch(request, env, ctx);
  }, "fetchDispatcher");
  return {
    ...worker,
    fetch(request, env, ctx) {
      const dispatcher = /* @__PURE__ */ __name(function(type, init) {
        if (type === "scheduled" && worker.scheduled !== void 0) {
          const controller = new __Facade_ScheduledController__2(
            Date.now(),
            init.cron ?? "",
            () => {
            }
          );
          return worker.scheduled(controller, env, ctx);
        }
      }, "dispatcher");
      return __facade_invoke__2(request, env, ctx, dispatcher, fetchDispatcher);
    }
  };
}
__name(wrapExportedHandler2, "wrapExportedHandler");
function wrapWorkerEntrypoint2(klass) {
  if (__INTERNAL_WRANGLER_MIDDLEWARE__2 === void 0 || __INTERNAL_WRANGLER_MIDDLEWARE__2.length === 0) {
    return klass;
  }
  for (const middleware of __INTERNAL_WRANGLER_MIDDLEWARE__2) {
    __facade_register__2(middleware);
  }
  return class extends klass {
    #fetchDispatcher = /* @__PURE__ */ __name((request, env, ctx) => {
      this.env = env;
      this.ctx = ctx;
      if (super.fetch === void 0) {
        throw new Error("Entrypoint class does not define a fetch() function.");
      }
      return super.fetch(request);
    }, "#fetchDispatcher");
    #dispatcher = /* @__PURE__ */ __name((type, init) => {
      if (type === "scheduled" && super.scheduled !== void 0) {
        const controller = new __Facade_ScheduledController__2(
          Date.now(),
          init.cron ?? "",
          () => {
          }
        );
        return super.scheduled(controller);
      }
    }, "#dispatcher");
    fetch(request) {
      return __facade_invoke__2(
        request,
        this.env,
        this.ctx,
        this.#dispatcher,
        this.#fetchDispatcher
      );
    }
  };
}
__name(wrapWorkerEntrypoint2, "wrapWorkerEntrypoint");
var WRAPPED_ENTRY2;
if (typeof middleware_insertion_facade_default2 === "object") {
  WRAPPED_ENTRY2 = wrapExportedHandler2(middleware_insertion_facade_default2);
} else if (typeof middleware_insertion_facade_default2 === "function") {
  WRAPPED_ENTRY2 = wrapWorkerEntrypoint2(middleware_insertion_facade_default2);
}
var middleware_loader_entry_default2 = WRAPPED_ENTRY2;
export {
  __INTERNAL_WRANGLER_MIDDLEWARE__2 as __INTERNAL_WRANGLER_MIDDLEWARE__,
  middleware_loader_entry_default2 as default
};
//# sourceMappingURL=functionsWorker-0.16254728101408666.js.map
