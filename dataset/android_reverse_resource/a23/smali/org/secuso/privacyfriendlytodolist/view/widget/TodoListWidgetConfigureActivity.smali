.class public Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;
.super Landroid/app/Activity;
.source "TodoListWidgetConfigureActivity.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "org.secuso.privacyfriendlytodolist.view.widget.TodoListWidget"

.field private static final PREF_PREFIX_KEY:Ljava/lang/String; = "appwidget_"


# instance fields
.field private dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private lists:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppWidgetId:I

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private selected:Ljava/lang/String;

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    .line 55
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->lists:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static deleteTitlePref(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "org.secuso.privacyfriendlytodolist.view.widget.TodoListWidget"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appwidget_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "org.secuso.privacyfriendlytodolist.view.widget.TodoListWidget"

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appwidget_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const p1, 0x7f0e0030

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static saveTitlePref(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "org.secuso.privacyfriendlytodolist.view.widget.TodoListWidget"

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appwidget_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->selected:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->selected:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->updateLists()V

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->setResult(I)V

    const v0, 0x7f0b005b

    .line 129
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->setContentView(I)V

    const v0, 0x7f090022

    .line 130
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fb

    .line 133
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->spinner:Landroid/widget/Spinner;

    .line 134
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->lists:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 135
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->lists:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 138
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    .line 141
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    .line 146
    :cond_0
    iget p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    if-nez p1, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->finish()V

    return-void

    :cond_1
    return-void
.end method

.method public updateLists()V
    .locals 4

    .line 157
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 162
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->lists:Landroid/widget/ArrayAdapter;

    .line 165
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->lists:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method
