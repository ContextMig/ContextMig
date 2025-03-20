.class Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;

.field final synthetic val$editTextOldPassword:Landroid/widget/EditText;

.field final synthetic val$editTextPassword:Landroid/widget/EditText;

.field final synthetic val$editTextRepeat:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x34ac192d36280a6aL    # -7.624798955405299E54

    const-string v2, "chan/android/app/pocketnote/app/settings/ChangePasswordActivity$1"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextOldPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    iput-object p4, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextRepeat:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextOldPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-boolean v5, v0, v5

    .line 30
    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    .line 31
    iget-object v3, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextRepeat:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 32
    iget-object v4, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;

    invoke-static {v4, v1}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->access$000(Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    aput-boolean v5, v0, v6

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_0

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 35
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    const-string v2, "Password must have at least 4 character"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 49
    :goto_0
    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    return-void

    .line 36
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_1

    aput-boolean v5, v0, v7

    .line 37
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextPassword:Landroid/widget/EditText;

    const-string v2, "Password can\'t be longer than 8 character"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v2}, Lchan/android/app/pocketnote/app/AppPreferences;->savePassword(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 40
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;

    const-string v2, "Your new password was updated successfully"

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->access$100(Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    .line 41
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->this$0:Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;->finish()V

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextRepeat:Landroid/widget/EditText;

    const-string v2, "Password mismatch!"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 47
    :cond_3
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity$1;->val$editTextOldPassword:Landroid/widget/EditText;

    const-string v2, "Your password is invalid!"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/16 v1, 0xe

    aput-boolean v5, v0, v1

    goto :goto_0
.end method
