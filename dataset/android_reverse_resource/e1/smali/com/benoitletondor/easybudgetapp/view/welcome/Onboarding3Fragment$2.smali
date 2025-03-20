.class Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;
.super Ljava/lang/Object;
.source "Onboarding3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x212a8fce2d74a592L    # -6.853105438163494E148

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 108
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->$jacocoInit()[Z

    move-result-object v4

    .line 112
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getDB()Lcom/benoitletondor/easybudgetapp/model/db/DB;

    move-result-object v0

    .line 113
    .local v0, "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    if-nez v0, :cond_0

    aput-boolean v9, v4, v9

    .line 130
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v5, "input_method"

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 131
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->access$200(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/16 v1, 0x9

    aput-boolean v9, v4, v1

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-virtual {v1, p1}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->next(Landroid/view/View;)V

    .line 139
    const/16 v1, 0xc

    aput-boolean v9, v4, v1

    return-void

    .line 113
    :cond_0
    const/4 v1, 0x2

    aput-boolean v9, v4, v1

    .line 115
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getBalanceForDay(Ljava/util/Date;)D

    move-result-wide v6

    neg-double v6, v6

    const/4 v1, 0x3

    aput-boolean v9, v4, v1

    .line 116
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->access$100(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)D

    move-result-wide v2

    .line 118
    .local v2, "newBalance":D
    cmpl-double v1, v2, v6

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v9, v4, v1

    goto :goto_0

    .line 120
    :cond_1
    sub-double v6, v2, v6

    const/4 v1, 0x5

    aput-boolean v9, v4, v1

    .line 122
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/Expense;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-virtual {v5}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f08002d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    neg-double v6, v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;)V

    const/4 v5, 0x6

    aput-boolean v9, v4, v5

    .line 123
    invoke-virtual {v0, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    const/4 v1, 0x7

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    .end local v2    # "newBalance":D
    :catch_0
    move-exception v1

    const/16 v5, 0xa

    aput-boolean v9, v4, v5

    .line 135
    const-string v5, "Error while hiding keyboard"

    invoke-static {v5, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xb

    aput-boolean v9, v4, v1

    goto :goto_1
.end method
