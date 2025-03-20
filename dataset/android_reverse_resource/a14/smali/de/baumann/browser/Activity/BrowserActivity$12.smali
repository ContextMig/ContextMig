.class Lde/baumann/browser/Activity/BrowserActivity$12;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->updateAutoComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$12;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x7f0900c0

    .line 772
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 773
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$12;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$12;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2, p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 775
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$12;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$12;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    return-void
.end method
