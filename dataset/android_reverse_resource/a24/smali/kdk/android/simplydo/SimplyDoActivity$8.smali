.class Lkdk/android/simplydo/SimplyDoActivity$8;
.super Ljava/lang/Object;
.source "SimplyDoActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 198
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity$8;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity$8;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v0}, Lkdk/android/simplydo/SimplyDoActivity;->access$300(Lkdk/android/simplydo/SimplyDoActivity;)V

    .line 203
    const/4 v0, 0x1

    return v0
.end method
