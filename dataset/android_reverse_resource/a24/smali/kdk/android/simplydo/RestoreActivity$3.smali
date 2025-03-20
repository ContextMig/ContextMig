.class Lkdk/android/simplydo/RestoreActivity$3;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/RestoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/RestoreActivity;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/RestoreActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lkdk/android/simplydo/RestoreActivity$3;->this$0:Lkdk/android/simplydo/RestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 95
    return-void
.end method
