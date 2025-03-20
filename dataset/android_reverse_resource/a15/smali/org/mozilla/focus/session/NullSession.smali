.class public Lorg/mozilla/focus/session/NullSession;
.super Lorg/mozilla/focus/session/Session;
.source "NullSession.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lorg/mozilla/focus/session/Source;->NONE:Lorg/mozilla/focus/session/Source;

    const-string v1, "focus:about"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/focus/session/Session;-><init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 15
    return-void
.end method
