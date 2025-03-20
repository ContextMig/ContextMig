.class Lde/baumann/browser/View/SearchEngineListPreference$3;
.super Ljava/lang/Object;
.source "SearchEngineListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/SearchEngineListPreference;->showEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SearchEngineListPreference;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/widget/EditText;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lde/baumann/browser/View/SearchEngineListPreference$3;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    iput-object p2, p0, Lde/baumann/browser/View/SearchEngineListPreference$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 74
    iget-object p1, p0, Lde/baumann/browser/View/SearchEngineListPreference$3;->this$0:Lde/baumann/browser/View/SearchEngineListPreference;

    iget-object p2, p0, Lde/baumann/browser/View/SearchEngineListPreference$3;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/View/SearchEngineListPreference;->access$100(Lde/baumann/browser/View/SearchEngineListPreference;Landroid/view/View;)V

    return-void
.end method
