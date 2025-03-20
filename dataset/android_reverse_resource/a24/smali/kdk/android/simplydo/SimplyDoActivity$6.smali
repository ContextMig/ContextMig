.class Lkdk/android/simplydo/SimplyDoActivity$6;
.super Ljava/lang/Object;
.source "SimplyDoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/SimplyDoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/SimplyDoActivity;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity$6;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity$6;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v0}, Lkdk/android/simplydo/SimplyDoActivity;->access$500(Lkdk/android/simplydo/SimplyDoActivity;)V

    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 178
    return-void
.end method
