.class public Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCustomMenuItemClickListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private id:I

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->id:I

    .line 839
    iput-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->name:Ljava/lang/String;

    .line 840
    iput-object p4, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$800(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)Landroid/content/Context;
    .locals 0

    .line 831
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)I
    .locals 0

    .line 831
    iget p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->id:I

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 846
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e002b

    .line 847
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 848
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 850
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)V

    const v1, 0x7f0e002a

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 867
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$2;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)V

    const v1, 0x7f0e0029

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 876
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 877
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
