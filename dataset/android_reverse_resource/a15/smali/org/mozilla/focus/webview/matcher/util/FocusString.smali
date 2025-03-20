.class public abstract Lorg/mozilla/focus/webview/matcher/util/FocusString;
.super Ljava/lang/Object;
.source "FocusString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/webview/matcher/util/FocusString$ReverseString;,
        Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;
    }
.end annotation


# instance fields
.field final offsetEnd:I

.field final offsetStart:I

.field protected final string:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offsetStart"    # I
    .param p3, "offsetEnd"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->string:Ljava/lang/String;

    .line 23
    iput p2, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetStart:I

    .line 24
    iput p3, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetEnd:I

    .line 26
    if-gt p2, p3, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "Cannot create negative-length String"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILorg/mozilla/focus/webview/matcher/util/FocusString$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/mozilla/focus/webview/matcher/util/FocusString$1;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/focus/webview/matcher/util/FocusString;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public abstract charAt(I)C
.end method

.method protected abstract isReversed()Z
.end method

.method public length()I
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetEnd:I

    iget v1, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;

    iget-object v1, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->string:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetStart:I

    iget v3, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetEnd:I

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/webview/matcher/util/FocusString$ForwardString;-><init>(Ljava/lang/String;II)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mozilla/focus/webview/matcher/util/FocusString$ReverseString;

    iget-object v1, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->string:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetStart:I

    iget v3, p0, Lorg/mozilla/focus/webview/matcher/util/FocusString;->offsetEnd:I

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/webview/matcher/util/FocusString$ReverseString;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public abstract substring(I)Lorg/mozilla/focus/webview/matcher/util/FocusString;
.end method
