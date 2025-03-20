.class public Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;
.super Landroid/app/Activity;
.source "NewPasswordActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6cae602c50d14cdL    # -7.305833834082222E275

    const-string v2, "chan/android/app/pocketnote/app/settings/NewPasswordActivity"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->toast(Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 47
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v5, v3, v5

    .line 18
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v5, v3, v0

    .line 20
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x3

    aput-boolean v5, v3, v1

    .line 21
    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x4

    aput-boolean v5, v3, v2

    .line 22
    const v2, 0x7f0c0072

    invoke-virtual {p0, v2}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v4, 0x5

    aput-boolean v5, v3, v4

    .line 23
    new-instance v4, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;

    invoke-direct {v4, p0, v0, v1}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;-><init>(Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const/4 v0, 0x6

    aput-boolean v5, v3, v0

    return-void
.end method
