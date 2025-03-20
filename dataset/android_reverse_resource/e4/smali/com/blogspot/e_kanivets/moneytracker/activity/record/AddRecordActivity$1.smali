.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;
.super Ljava/lang/Object;
.source "AddRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x740938adf955c838L    # 9.02891729932361E250

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v0, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v2, v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 154
    aput-boolean v3, v1, v3

    return-void
.end method
