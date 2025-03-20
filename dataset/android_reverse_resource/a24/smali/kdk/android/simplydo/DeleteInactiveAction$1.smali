.class Lkdk/android/simplydo/DeleteInactiveAction$1;
.super Ljava/lang/Object;
.source "DeleteInactiveAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/DeleteInactiveAction;-><init>(Landroid/app/Activity;Lkdk/android/simplydo/DataViewer;Lkdk/android/simplydo/ListPropertiesAdapter;Lkdk/android/simplydo/ItemPropertiesAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/DeleteInactiveAction;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/DeleteInactiveAction;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lkdk/android/simplydo/DeleteInactiveAction$1;->this$0:Lkdk/android/simplydo/DeleteInactiveAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction$1;->this$0:Lkdk/android/simplydo/DeleteInactiveAction;

    invoke-static {v0}, Lkdk/android/simplydo/DeleteInactiveAction;->access$000(Lkdk/android/simplydo/DeleteInactiveAction;)V

    .line 56
    return-void
.end method
