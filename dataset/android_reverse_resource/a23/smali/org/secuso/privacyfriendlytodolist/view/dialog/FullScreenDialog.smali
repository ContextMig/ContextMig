.class public abstract Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# instance fields
.field protected callback:Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;->setContentView(I)V

    .line 37
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v0, -0x1

    .line 40
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 41
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 42
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;

    return-void
.end method
