.class Lkdk/android/simplydo/SimplyDoActivity$7;
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
    .line 187
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity$7;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Editor Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity$7;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v0}, Lkdk/android/simplydo/SimplyDoActivity;->access$200(Lkdk/android/simplydo/SimplyDoActivity;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method
