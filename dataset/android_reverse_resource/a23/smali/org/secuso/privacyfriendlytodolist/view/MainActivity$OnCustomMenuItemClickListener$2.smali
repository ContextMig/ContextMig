.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$2;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 872
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
