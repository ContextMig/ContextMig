.class Lkdk/android/simplydo/MoveToAction$3;
.super Ljava/lang/Object;
.source "MoveToAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/MoveToAction;-><init>(Landroid/content/Context;Lkdk/android/simplydo/DataViewer;Lkdk/android/simplydo/ListPropertiesAdapter;Lkdk/android/simplydo/ItemPropertiesAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/MoveToAction;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/MoveToAction;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lkdk/android/simplydo/MoveToAction$3;->this$0:Lkdk/android/simplydo/MoveToAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 75
    const-string v0, "SimplyDo"

    const-string v1, "MoveToAction.cancelClickedListener: Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lkdk/android/simplydo/MoveToAction$3;->this$0:Lkdk/android/simplydo/MoveToAction;

    invoke-static {v0}, Lkdk/android/simplydo/MoveToAction;->access$200(Lkdk/android/simplydo/MoveToAction;)V

    .line 77
    return-void
.end method
