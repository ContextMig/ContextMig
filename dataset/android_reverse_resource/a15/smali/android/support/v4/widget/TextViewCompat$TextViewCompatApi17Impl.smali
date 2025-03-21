.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi17Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 286
    .local v2, "rtl":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 289
    aget-object v3, v0, v6

    .line 290
    .local v3, "start":Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v4

    .line 291
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    aput-object v3, v0, v4

    .line 292
    aput-object v1, v0, v6

    .line 294
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v3    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0

    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "rtl":Z
    :cond_1
    move v2, v4

    .line 285
    goto :goto_0
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 262
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p4

    :goto_1
    if-eqz v0, :cond_2

    .end local p2    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void

    .line 261
    .end local v0    # "rtl":Z
    .restart local p2    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move-object v1, p2

    .line 262
    goto :goto_1

    :cond_2
    move-object p2, p4

    goto :goto_2
.end method
