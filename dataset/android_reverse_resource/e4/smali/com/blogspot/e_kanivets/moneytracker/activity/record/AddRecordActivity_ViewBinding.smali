.class public Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AddRecordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

.field private view2131296502:Landroid/view/View;

.field private view2131296510:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4168560a4996267dL    # -3.526196707190678E-7

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;Landroid/view/View;)V

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v6, 0x7f0900fe

    const v4, 0x7f0900f6

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    .line 35
    const v1, 0x7f090040

    const-string/jumbo v3, "field \'contentView\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->contentView:Landroid/view/View;

    .line 36
    const-string/jumbo v1, "field \'tvDate\' and method \'selectDate\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v4, v1, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->view2131296502:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string/jumbo v1, "field \'tvTime\' and method \'selectTime\'"

    invoke-static {p2, v6, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "field \'tvTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v6, v1, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tvTime:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->view2131296510:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f09005d

    const-string/jumbo v3, "field \'etTitle\'"

    const-class v4, Landroid/widget/EditText;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etTitle:Landroid/widget/EditText;

    .line 55
    const v1, 0x7f090056

    const-string/jumbo v3, "field \'etCategory\'"

    const-class v4, Landroid/widget/AutoCompleteTextView;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    .line 56
    const v1, 0x7f09005b

    const-string/jumbo v3, "field \'etPrice\'"

    const-class v4, Landroid/widget/EditText;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etPrice:Landroid/widget/EditText;

    .line 57
    const v1, 0x7f0900be

    const-string/jumbo v3, "field \'spinnerAccount\'"

    const-class v4, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {p2, v1, v3, v4}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    .line 58
    aput-boolean v5, v2, v5

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 63
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    .line 64
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    throw v2

    .line 65
    :cond_0
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    .line 67
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->contentView:Landroid/view/View;

    .line 68
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 69
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tvTime:Landroid/widget/TextView;

    .line 70
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etTitle:Landroid/widget/EditText;

    .line 71
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    .line 72
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etPrice:Landroid/widget/EditText;

    .line 73
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    .line 75
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->view2131296502:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->view2131296502:Landroid/view/View;

    .line 77
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->view2131296510:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_ViewBinding;->view2131296510:Landroid/view/View;

    .line 79
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-void
.end method
