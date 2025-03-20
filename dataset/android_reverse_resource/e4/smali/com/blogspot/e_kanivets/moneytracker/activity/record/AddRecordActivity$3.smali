.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;
.super Ljava/lang/Object;
.source "AddRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$categoryAutoCompleteAdapter:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x234d0c539d7bebebL    # 1.219636741709671E-138

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->val$categoryAutoCompleteAdapter:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->$jacocoInit()[Z

    move-result-object v2

    .line 166
    if-nez p2, :cond_0

    aput-boolean v5, v2, v5

    .line 176
    .local v0, "prediction":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    return-void

    .line 166
    .end local v0    # "prediction":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1    # "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-static {v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->access$100(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->completeByRecordTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "prediction":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    .line 173
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;->val$categoryAutoCompleteAdapter:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    goto :goto_0
.end method
