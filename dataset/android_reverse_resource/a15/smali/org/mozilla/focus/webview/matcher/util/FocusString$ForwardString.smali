.class Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;
.super Lorg/mozilla/focus/webview/matcher/util/FocusString;
.source "FocusString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/webview/matcher/util/FocusString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForwardString"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offsetStart"    # I
    .param p3, "offsetEnd"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/focus/webview/matcher/util/FocusString;-><init>(Ljava/lang/String;IILorg/mozilla/focus/webview/matcher/util/FocusString$1;)V

    .line 59
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;->string:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;->offsetStart:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method protected isReversed()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public substring(I)Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    .line 78
    new-instance v0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;

    iget-object v1, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;->string:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;->offsetStart:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;->offsetEnd:I

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
