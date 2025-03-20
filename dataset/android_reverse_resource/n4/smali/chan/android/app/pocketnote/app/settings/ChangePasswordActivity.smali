.class public Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;
.super Landroid/app/Activity;
.source "ChangePasswordActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x693a88888e427a6aL    # 7.933575776052637E198

    const-string v2, "chan/android/app/pocketnote/app/settings/ChangePasswordActivity"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->doesOldPasswordMatch(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->toast(Ljava/lang/String;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private doesOldPasswordMatch(Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lchan/android/app/pocketnote/util/HashUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private toast(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v4, v6

    .line 19
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v6, v4, v0

    .line 21
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x3

    aput-boolean v6, v4, v1

    .line 22
    const v1, 0x7f0c0055

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x4

    aput-boolean v6, v4, v2

    .line 23
    const v2, 0x7f0c0056

    invoke-virtual {p0, v2}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    aput-boolean v6, v4, v3

    .line 25
    const v3, 0x7f0c0057

    invoke-virtual {p0, v3}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v5, 0x6

    aput-boolean v6, v4, v5

    .line 26
    new-instance v5, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;

    invoke-direct {v5, p0, v0, v1, v2}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;-><init>(Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const/4 v0, 0x7

    aput-boolean v6, v4, v0

    return-void
.end method
