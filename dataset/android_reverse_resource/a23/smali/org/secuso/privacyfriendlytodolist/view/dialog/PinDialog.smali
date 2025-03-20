.class public Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;
.super Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.source "PinDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;
    }
.end annotation


# instance fields
.field private callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

.field private wrongCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0051

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->wrongCounter:I

    const p1, 0x7f090037

    .line 41
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 42
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09003c

    .line 66
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 67
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090036

    .line 87
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 88
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$3;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$4;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$4;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V

    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const p1, 0x7f090074

    .line 103
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setActivated(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->wrongCounter:I

    return p0
.end method

.method static synthetic access$108(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)I
    .locals 2

    .line 32
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->wrongCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->wrongCounter:I

    return v0
.end method


# virtual methods
.method public setCallback(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;

    return-void
.end method
