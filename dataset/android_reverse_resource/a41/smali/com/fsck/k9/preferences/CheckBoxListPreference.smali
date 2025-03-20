.class public Lcom/fsck/k9/preferences/CheckBoxListPreference;
.super Landroid/preference/DialogPreference;
.source "CheckBoxListPreference.java"


# instance fields
.field private mCheckedItems:[Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mPendingItems:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/preferences/CheckBoxListPreference;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/preferences/CheckBoxListPreference;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    return-object v0
.end method


# virtual methods
.method public getCheckedItems()[Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mCheckedItems:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    iget-object v1, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mCheckedItems:[Z

    iget-object v2, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    .line 50
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    .line 32
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    iget-object v2, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mCheckedItems:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mItems:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    new-instance v2, Lcom/fsck/k9/preferences/CheckBoxListPreference$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/preferences/CheckBoxListPreference$1;-><init>(Lcom/fsck/k9/preferences/CheckBoxListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    return-void
.end method

.method public setCheckedItems([Z)V
    .locals 0
    .param p1, "items"    # [Z

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mCheckedItems:[Z

    .line 58
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mItems:[Ljava/lang/CharSequence;

    .line 54
    return-void
.end method
