.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0
.end method
