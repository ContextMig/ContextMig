.class Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$2;
.super Ljava/lang/Object;
.source "RecyclerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
