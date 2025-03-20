.class public Lorg/mozilla/focus/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;
    }
.end annotation


# direct methods
.method public static hideKeyboard(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static isRTL(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMenuItemEnabled(Landroid/view/MenuItem;Z)V
    .locals 3
    .param p0, "menuItem"    # Landroid/view/MenuItem;
    .param p1, "enabled"    # Z

    .prologue
    .line 156
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 157
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 161
    :cond_0
    return-void

    .line 159
    :cond_1
    const/16 v1, 0x82

    goto :goto_0
.end method

.method public static showBrandedSnackbar(Landroid/view/View;II)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I
    .param p2, "delayMillis"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 128
    .local v1, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "snackbarView":Landroid/view/View;
    const v4, 0x7f0600c7

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    const v4, 0x7f0900fc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "snackbarTextView":Landroid/widget/TextView;
    const v4, 0x7f0600c8

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 136
    new-instance v4, Lorg/mozilla/focus/utils/ViewUtils$1;

    invoke-direct {v4, v1}, Lorg/mozilla/focus/utils/ViewUtils$1;-><init>(Landroid/support/design/widget/Snackbar;)V

    int-to-long v6, p2

    invoke-virtual {p0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 108
    new-instance v0, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;-><init>(Landroid/view/View;Lorg/mozilla/focus/utils/ViewUtils$1;)V

    .line 109
    .local v0, "showKeyboard":Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;
    invoke-static {v0}, Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;->access$100(Lorg/mozilla/focus/utils/ViewUtils$ShowKeyboard;)V

    .line 110
    return-void
.end method
