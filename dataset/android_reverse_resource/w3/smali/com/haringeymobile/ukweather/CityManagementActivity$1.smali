.class Lcom/haringeymobile/ukweather/CityManagementActivity$1;
.super Ljava/lang/Object;
.source "CityManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/CityManagementActivity;->getDialogOnClickListener(ILjava/lang/String;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/CityManagementActivity;

.field final synthetic val$cityId:I

.field final synthetic val$cityNameEditText:Landroid/widget/EditText;

.field final synthetic val$originalName:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x697940923ec12b49L    # -3.714767963849439E-200

    const-string v2, "com/haringeymobile/ukweather/CityManagementActivity$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/CityManagementActivity;Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->this$0:Lcom/haringeymobile/ukweather/CityManagementActivity;

    iput-object p2, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->val$cityNameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->val$originalName:Ljava/lang/String;

    iput p4, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->val$cityId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->$jacocoInit()[Z

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->val$cityNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-boolean v1, v2, v1

    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 106
    iget-object v3, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->this$0:Lcom/haringeymobile/ukweather/CityManagementActivity;

    invoke-static {v3}, Lcom/haringeymobile/ukweather/CityManagementActivity;->access$000(Lcom/haringeymobile/ukweather/CityManagementActivity;)V

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 113
    .local v0, "userNameHasBeenChanged":Z
    :goto_0
    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    return-void

    .line 108
    .end local v0    # "userNameHasBeenChanged":Z
    :cond_0
    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->val$originalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x4

    aput-boolean v1, v2, v4

    move v0, v1

    .line 109
    .restart local v0    # "userNameHasBeenChanged":Z
    :goto_1
    if-nez v0, :cond_2

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 108
    .end local v0    # "userNameHasBeenChanged":Z
    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x5

    aput-boolean v1, v2, v4

    goto :goto_1

    .line 109
    .restart local v0    # "userNameHasBeenChanged":Z
    :cond_2
    const/4 v4, 0x7

    aput-boolean v1, v2, v4

    .line 110
    iget-object v4, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->this$0:Lcom/haringeymobile/ukweather/CityManagementActivity;

    iget v5, p0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;->val$cityId:I

    invoke-static {v4, v5, v3}, Lcom/haringeymobile/ukweather/CityManagementActivity;->access$100(Lcom/haringeymobile/ukweather/CityManagementActivity;ILjava/lang/String;)V

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
