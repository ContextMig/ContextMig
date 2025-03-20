.class Lkdk/android/simplydo/SimplyDoActivity$1;
.super Ljava/lang/Object;
.source "SimplyDoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 130
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity$1;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lkdk/android/simplydo/SimplyDoActivity$1;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v0}, Lkdk/android/simplydo/SimplyDoActivity;->access$200(Lkdk/android/simplydo/SimplyDoActivity;)V

    .line 135
    return-void
.end method
