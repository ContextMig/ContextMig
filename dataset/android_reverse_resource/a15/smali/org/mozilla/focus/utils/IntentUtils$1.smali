.class final Lorg/mozilla/focus/utils/IntentUtils$1;
.super Ljava/lang/Object;
.source "IntentUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/utils/IntentUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$targetIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/mozilla/focus/utils/IntentUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/mozilla/focus/utils/IntentUtils$1;->val$targetIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mozilla/focus/utils/IntentUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/mozilla/focus/utils/IntentUtils$1;->val$targetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
