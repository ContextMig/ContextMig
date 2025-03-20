.class Lde/cketti/library/changelog/ChangeLog$2;
.super Ljava/lang/Object;
.source "ChangeLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cketti/library/changelog/ChangeLog;->getDialog(Z)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/cketti/library/changelog/ChangeLog;


# direct methods
.method constructor <init>(Lde/cketti/library/changelog/ChangeLog;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lde/cketti/library/changelog/ChangeLog$2;->this$0:Lde/cketti/library/changelog/ChangeLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lde/cketti/library/changelog/ChangeLog$2;->this$0:Lde/cketti/library/changelog/ChangeLog;

    invoke-virtual {v0}, Lde/cketti/library/changelog/ChangeLog;->getFullLogDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method
