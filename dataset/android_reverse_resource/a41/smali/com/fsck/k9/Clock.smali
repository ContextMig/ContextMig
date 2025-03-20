.class public Lcom/fsck/k9/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/fsck/k9/Clock;

    invoke-direct {v0}, Lcom/fsck/k9/Clock;-><init>()V

    sput-object v0, Lcom/fsck/k9/Clock;->INSTANCE:Lcom/fsck/k9/Clock;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
