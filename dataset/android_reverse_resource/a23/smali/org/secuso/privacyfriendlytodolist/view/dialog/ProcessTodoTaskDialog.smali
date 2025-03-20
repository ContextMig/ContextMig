.class public Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;
.super Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.source "ProcessTodoTaskDialog.java"


# instance fields
.field private dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private deadline:J

.field private deadlineTextView:Landroid/widget/TextView;

.field private defaultPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

.field private description:Ljava/lang/String;

.field private dialogTitleEdit:Landroid/widget/TextView;

.field private dialogTitleNew:Landroid/widget/TextView;

.field private listSelector:Landroid/widget/TextView;

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private prioritySelector:Landroid/widget/TextView;

.field private progressPercent:Landroid/widget/TextView;

.field private progressSelector:Landroid/widget/SeekBar;

.field private progressText:Landroid/widget/TextView;

.field private progress_layout:Landroid/widget/RelativeLayout;

.field private reminderTextView:Landroid/widget/TextView;

.field private reminderTime:J

.field private selectedListID:I

.field private task:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

.field private taskDescription:Landroid/widget/EditText;

.field private taskName:Landroid/widget/EditText;

.field private taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

.field private taskProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0b0021

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->lists:Ljava/util/List;

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskProgress:I

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadline:J

    .line 74
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTime:J

    .line 76
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->MEDIUM:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->defaultPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 84
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->initGui()V

    .line 85
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->task:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 86
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->task:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 6

    const v0, 0x7f0b0021

    .line 92
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->lists:Ljava/util/List;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskProgress:I

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadline:J

    .line 74
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTime:J

    .line 76
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->MEDIUM:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->defaultPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 94
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->initGui()V

    .line 95
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setChanged()V

    .line 97
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadline:J

    .line 98
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getReminderTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTime:J

    .line 99
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskName:Landroid/widget/EditText;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskDescription:Landroid/widget/EditText;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->priority2String(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 103
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progressSelector:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 105
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadlineTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0087

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadlineTextView:Landroid/widget/TextView;

    iget-wide v4, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadline:J

    invoke-static {v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getReminderTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 109
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e009d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTextView:Landroid/widget/TextView;

    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTime:J

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDateTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->task:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadlineTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)I
    .locals 0

    .line 53
    iget p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskProgress:I

    return p0
.end method

.method static synthetic access$202(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;I)I
    .locals 0

    .line 53
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskProgress:I

    return p1
.end method

.method static synthetic access$300(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/EditText;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/EditText;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskDescription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->task:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    return-object p0
.end method

.method static synthetic access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadline:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadline:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    return-object p0
.end method

.method static synthetic access$800(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)I
    .locals 0

    .line 53
    iget p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->selectedListID:I

    return p0
.end method

.method static synthetic access$900(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTime:J

    return-wide p1
.end method

.method private autoProgress()V
    .locals 4

    .line 372
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->task:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    const/4 v0, 0x3

    int-to-double v0, v0

    const/4 v2, 0x5

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v2, v0

    .line 376
    iput v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskProgress:I

    .line 377
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progressPercent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private hasAutoProgress()Z
    .locals 3

    .line 358
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initGui()V
    .locals 3

    const v0, 0x7f090134

    .line 119
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$1;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 128
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->defaultPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 129
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-static {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->priority2String(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090066

    .line 132
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dialogTitleNew:Landroid/widget/TextView;

    const v0, 0x7f090063

    .line 133
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dialogTitleEdit:Landroid/widget/TextView;

    const v0, 0x7f090132

    .line 137
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$2;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const v0, 0x7f090138

    .line 148
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progressText:Landroid/widget/TextView;

    const v0, 0x7f0900be

    .line 149
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progressPercent:Landroid/widget/TextView;

    const v1, 0x7f0900cd

    .line 150
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progress_layout:Landroid/widget/RelativeLayout;

    .line 153
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900dd

    .line 154
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progressSelector:Landroid/widget/SeekBar;

    .line 156
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->hasAutoProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progressSelector:Landroid/widget/SeekBar;

    new-instance v2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$3;

    invoke-direct {v2, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->makeProgressGone()V

    :goto_0
    const v0, 0x7f090033

    .line 181
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 182
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090032

    .line 211
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 212
    new-instance v2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$5;

    invoke-direct {v2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$5;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090139

    .line 221
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadlineTextView:Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->deadlineTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    invoke-direct {v2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09013b

    .line 244
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTextView:Landroid/widget/TextView;

    .line 245
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->reminderTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090073

    .line 279
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskName:Landroid/widget/EditText;

    const v0, 0x7f090072

    .line 280
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskDescription:Landroid/widget/EditText;

    return-void
.end method

.method private makeProgressGone()V
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->progress_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .line 285
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f090132

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const p3, 0x7f090134

    if-eq p2, p3, :cond_0

    goto :goto_2

    :cond_0
    const p2, 0x7f0e00a7

    .line 287
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 288
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object p2

    array-length p3, p2

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v2, p2, v1

    .line 289
    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->priority2String(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v3, v0, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const p2, 0x7f0e00a5

    .line 295
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 296
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->updateLists()V

    .line 297
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->lists:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 299
    invoke-virtual {p3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, v1, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 308
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    array-length v0, v0

    if-eqz p2, :cond_0

    .line 309
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 310
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 311
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->prioritySelector:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->taskPriority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-static {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->priority2String(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 315
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 316
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v2

    iput v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->selectedListID:I

    .line 317
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00c5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, -0x3

    .line 319
    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->selectedListID:I

    goto :goto_0

    .line 323
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setListSelector(IZ)V
    .locals 4

    .line 343
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->updateLists()V

    .line 344
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 345
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 346
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v1

    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->selectedListID:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    .line 349
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->listSelector:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x3

    .line 350
    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->selectedListID:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public titleEdit()V
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dialogTitleNew:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dialogTitleEdit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateLists()V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 330
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->lists:Ljava/util/List;

    return-void
.end method
