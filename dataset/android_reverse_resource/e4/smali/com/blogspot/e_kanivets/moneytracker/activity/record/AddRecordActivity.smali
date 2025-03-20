.class public Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "AddRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;,
        Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final KEY_MODE:Ljava/lang/String; = "key_mode"

.field public static final KEY_RECORD:Ljava/lang/String; = "key_record"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field private static final TAG:Ljava/lang/String; = "AddRecordActivity"


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation
.end field

.field private autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

.field categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field contentView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090040
    .end annotation
.end field

.field etCategory:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090056
    .end annotation
.end field

.field etPrice:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field etTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

.field preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private recordValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation
.end field

.field spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900be
    .end annotation
.end field

.field private timestamp:J

.field tvDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f6
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fe
    .end annotation
.end field

.field private type:I

.field private uiDecorator:Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4c4edb8f0c74f93eL    # 3.8739323555276226E59

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity"

    const/16 v3, 0x4a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tryRecord()V

    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    const/16 v1, 0x45

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$302(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;J)J
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    const/16 v1, 0x46

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-wide p1
.end method

.method static synthetic access$400(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->updateDateAndTime()V

    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->showToast(I)V

    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$600(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->showToast(I)V

    const/16 v1, 0x49

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addRecord()Z
    .locals 28

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v25

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->recordValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    invoke-interface {v2}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;->validate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    .line 332
    .local v26, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    cmp-long v2, v2, v26

    if-lez v2, :cond_0

    .line 333
    const v2, 0x7f0e006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->showToast(I)V

    .line 334
    const/4 v2, 0x0

    const/16 v3, 0x37

    const/4 v4, 0x1

    aput-boolean v4, v25, v3

    .line 364
    :goto_0
    return v2

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 339
    .local v23, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etPrice:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 340
    .local v8, "price":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 342
    .local v10, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    .line 346
    :goto_1
    const/16 v24, 0x0

    .line 348
    .local v24, "newRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-ne v2, v3, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    new-instance v7, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;DLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v14, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v24

    const/16 v2, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    .line 357
    :goto_2
    if-nez v24, :cond_5

    .line 358
    const/4 v2, 0x0

    const/16 v3, 0x3f

    const/4 v4, 0x1

    aput-boolean v4, v25, v3

    goto/16 :goto_0

    .line 343
    .end local v24    # "newRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_1
    move-object/from16 v6, v23

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    goto :goto_1

    .line 351
    .restart local v24    # "newRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-eq v2, v3, :cond_3

    const/16 v2, 0x3b

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    goto :goto_2

    .line 352
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    if-nez v2, :cond_4

    const-wide/16 v12, -0x1

    const/16 v2, 0x3c

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    .line 353
    .local v12, "recordId":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    new-instance v11, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    move/from16 v16, v0

    new-instance v18, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v6

    move-wide/from16 v19, v8

    move-object/from16 v21, v10

    invoke-direct/range {v11 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JJILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;DLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2, v11}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->update(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v24

    const/16 v2, 0x3e

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    goto :goto_2

    .line 352
    .end local v12    # "recordId":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getId()J

    move-result-wide v12

    const/16 v2, 0x3d

    const/4 v3, 0x1

    aput-boolean v3, v25, v2

    goto :goto_3

    .line 360
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    move-object/from16 v0, v23

    invoke-virtual {v2, v6, v0}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->addRecordTitleCategoryPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v2, 0x1

    const/16 v3, 0x40

    const/4 v4, 0x1

    aput-boolean v4, v25, v3

    goto/16 :goto_0

    .line 364
    .end local v6    # "title":Ljava/lang/String;
    .end local v8    # "price":D
    .end local v10    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v23    # "category":Ljava/lang/String;
    .end local v24    # "newRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v26    # "now":J
    :cond_6
    const/4 v2, 0x0

    const/16 v3, 0x41

    const/4 v4, 0x1

    aput-boolean v4, v25, v3

    goto/16 :goto_0
.end method

.method private presentSpinnerAccount()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v9, 0x20

    aput-boolean v12, v7, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 281
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    const/16 v9, 0x21

    aput-boolean v12, v7, v9

    goto :goto_0

    .line 284
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    const/4 v4, -0x1

    .line 286
    .local v4, "selectedAccountIndex":I
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v9, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-ne v8, v9, :cond_5

    .line 287
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    if-nez v8, :cond_1

    const/16 v8, 0x22

    aput-boolean v12, v7, v8

    .line 303
    :goto_1
    const/4 v8, -0x1

    if-eq v4, v8, :cond_a

    const/16 v6, 0x30

    aput-boolean v12, v7, v6

    .line 314
    :goto_2
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x7f0b005d

    invoke-direct {v8, p0, v9, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 317
    const/16 v6, 0x33

    aput-boolean v12, v7, v6

    return-void

    .line 287
    :cond_1
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v8}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v8

    if-nez v8, :cond_2

    const/16 v8, 0x23

    aput-boolean v12, v7, v8

    goto :goto_1

    .line 288
    :cond_2
    const/16 v8, 0x24

    aput-boolean v12, v7, v8

    move v5, v6

    :goto_3
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 289
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 290
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v10

    invoke-virtual {v10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    const/16 v8, 0x25

    aput-boolean v12, v7, v8

    .line 288
    :goto_4
    add-int/lit8 v3, v5, 0x1

    .local v3, "i":I
    const/16 v8, 0x27

    aput-boolean v12, v7, v8

    move v5, v3

    goto :goto_3

    .line 290
    .end local v3    # "i":I
    .end local v4    # "selectedAccountIndex":I
    .local v5, "selectedAccountIndex":I
    :cond_3
    const/16 v8, 0x26

    aput-boolean v12, v7, v8

    move v4, v5

    .end local v5    # "selectedAccountIndex":I
    .restart local v4    # "selectedAccountIndex":I
    goto :goto_4

    .line 288
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_4
    const/16 v8, 0x28

    aput-boolean v12, v7, v8

    goto :goto_1

    .line 293
    :cond_5
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v9, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-eq v8, v9, :cond_6

    const/16 v8, 0x29

    aput-boolean v12, v7, v8

    goto :goto_1

    .line 294
    :cond_6
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v8}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readDefaultAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v2

    .line 295
    .local v2, "defaultAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v2, :cond_7

    const/16 v8, 0x2a

    aput-boolean v12, v7, v8

    goto :goto_1

    .line 296
    :cond_7
    const/16 v8, 0x2b

    aput-boolean v12, v7, v8

    move v5, v6

    :goto_5
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_8

    const/16 v8, 0x2c

    aput-boolean v12, v7, v8

    goto/16 :goto_1

    .line 297
    :cond_8
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 298
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    const/16 v8, 0x2d

    aput-boolean v12, v7, v8

    .line 296
    :goto_6
    add-int/lit8 v3, v5, 0x1

    .restart local v3    # "i":I
    const/16 v8, 0x2f

    aput-boolean v12, v7, v8

    move v5, v3

    goto :goto_5

    .line 298
    .end local v3    # "i":I
    .end local v4    # "selectedAccountIndex":I
    .restart local v5    # "selectedAccountIndex":I
    :cond_9
    const/16 v8, 0x2e

    aput-boolean v12, v7, v8

    move v4, v5

    .end local v5    # "selectedAccountIndex":I
    .restart local v4    # "selectedAccountIndex":I
    goto :goto_6

    .line 304
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v2    # "defaultAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_a
    const/4 v4, 0x0

    .line 305
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    .line 308
    const v6, 0x7f0e005a

    invoke-virtual {p0, v6}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x31

    aput-boolean v12, v7, v6

    goto/16 :goto_2

    .line 310
    :cond_b
    const v6, 0x7f0e0020

    invoke-virtual {p0, v6}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x32

    aput-boolean v12, v7, v6

    goto/16 :goto_2
.end method

.method private tryRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 320
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Record"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 321
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->addRecord()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 326
    :goto_0
    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    return-void

    .line 322
    :cond_0
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Record"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 323
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->setResult(I)V

    .line 324
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->finish()V

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private updateDateAndTime()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    invoke-virtual {v2, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tvTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    invoke-virtual {v2, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    const v1, 0x7f0b001f

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 109
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    .line 110
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    .line 112
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;

    invoke-direct {v0, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->uiDecorator:Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;

    .line 114
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_record"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 115
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_mode"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    .line 116
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    .line 117
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readActiveAccounts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->accountList:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-eq v0, v3, :cond_0

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    .line 120
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-nez v0, :cond_2

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    .line 123
    :goto_2
    const/4 v0, 0x0

    const/16 v3, 0xe

    aput-boolean v1, v2, v3

    .line 122
    :goto_3
    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 122
    :cond_2
    iget v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    if-nez v0, :cond_3

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    :goto_4
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    .line 123
    invoke-virtual {v0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    :goto_5
    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_3

    .line 122
    :cond_3
    iget v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    if-eq v0, v1, :cond_4

    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    goto :goto_2

    :cond_4
    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    goto :goto_4

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    if-nez v0, :cond_6

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    goto :goto_2

    :cond_6
    const/16 v0, 0xc

    aput-boolean v1, v2, v0

    goto :goto_5
.end method

.method protected initViews()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 130
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 132
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->contentView:Landroid/view/View;

    invoke-direct {v2, p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->recordValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    .line 133
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-direct {v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    .line 136
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x10

    aput-boolean v6, v1, v2

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->uiDecorator:Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    iget v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->decorateActionBar(Landroid/support/v7/app/ActionBar;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V

    .line 143
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->presentSpinnerAccount()V

    .line 146
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    const v2, 0x7f0b0055

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->autoCompleter:Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    invoke-direct {v0, p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;-><init>(Landroid/content/Context;ILcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;)V

    .line 148
    .local v0, "categoryAutoCompleteAdapter":Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 163
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$3;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etTitle:Landroid/widget/EditText;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;

    invoke-direct {v4, v8}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 181
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;

    invoke-direct {v4, v8}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$SemicolonInputFilter;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$1;)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 183
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->updateDateAndTime()V

    .line 184
    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    return-void

    .line 137
    .end local v0    # "categoryAutoCompleteAdapter":Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etTitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionNone(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->etCategory:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x12

    aput-boolean v6, v1, v2

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 221
    :pswitch_0
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x1d

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 210
    :pswitch_1
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->tryRecord()V

    .line 211
    const/16 v1, 0x19

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->record:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->delete(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    aput-boolean v0, v2, v1

    .line 218
    :goto_1
    const/16 v1, 0x1c

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 215
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->setResult(I)V

    .line 216
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->finish()V

    const/16 v1, 0x1b

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x7f090011
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;->$SwitchMap$com$blogspot$e_kanivets$moneytracker$activity$record$AddRecordActivity$Mode:[I

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->mode:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    .line 203
    :goto_0
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    return v3

    .line 196
    :pswitch_0
    const v1, 0x7f090011

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 197
    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public selectDate()V
    .locals 10
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900f6
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 227
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Select Date"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 229
    .local v7, "calendar":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 230
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->uiDecorator:Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;

    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->getTheme(I)I

    move-result v2

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$4;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    .line 247
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    .line 248
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 249
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 250
    const/16 v1, 0x1e

    aput-boolean v9, v8, v1

    return-void
.end method

.method public selectTime()V
    .locals 9
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900fe
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 254
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Time"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 256
    .local v7, "calendar":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->timestamp:J

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 257
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->uiDecorator:Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;

    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;->type:I

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/AddRecordUiDecorator;->getTheme(I)I

    move-result v2

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$5;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$5;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V

    const/16 v1, 0xb

    .line 273
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xc

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 274
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 275
    .local v0, "dialog":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 276
    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    return-void
.end method
