.class Landroid/support/v7/widget/CardViewApi17Impl;
.super Landroid/support/v7/widget/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/support/v7/widget/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewApi17Impl$1;-><init>(Landroid/support/v7/widget/CardViewApi17Impl;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 36
    return-void
.end method
