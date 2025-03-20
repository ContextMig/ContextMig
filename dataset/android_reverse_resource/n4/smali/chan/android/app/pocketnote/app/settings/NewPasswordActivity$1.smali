.class Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;
.super Ljava/lang/Object;
.source "NewPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;

.field final synthetic val$editTextPassword:Landroid/widget/EditText;

.field final synthetic val$editTextRepeat:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5214d78c94f4ad52L    # -1.7065115522961491E-87

    const-string v2, "chan/android/app/pocketnote/app/settings/NewPasswordActivity$1"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextRepeat:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 27
    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextRepeat:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_0

    aput-boolean v4, v0, v5

    .line 30
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    const-string v2, "Password must have at least 4 character"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 41
    :goto_0
    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    return-void

    .line 31
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 32
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    const-string v2, "Password can\'t be longer than 8 character"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v1}, Lchan/android/app/pocketnote/app/AppPreferences;->savePassword(Ljava/lang/String;)V

    aput-boolean v4, v0, v6

    .line 35
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;

    const-string v2, "Password was created successfully. You can lock all your notes now!"

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->access$000(Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 36
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;->finish()V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity$1;->val$editTextRepeat:Landroid/widget/EditText;

    const-string v2, "Password does not match!"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
