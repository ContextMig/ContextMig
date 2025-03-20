.class public Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;
.super Ljava/lang/Object;
.source "PrefManager.java"


# static fields
.field private static final IS_FIRST_TIME_LAUNCH:Ljava/lang/String; = "IsFirstTimeLaunch"

.field private static final PREF_NAME:Ljava/lang/String; = "privacy_friendly_todo"


# instance fields
.field private PRIVATE_MODE:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->PRIVATE_MODE:I

    const-string v0, "privacy_friendly_todo"

    .line 43
    iget v1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->PRIVATE_MODE:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->pref:Landroid/content/SharedPreferences;

    .line 44
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->pref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public isFirstTimeLaunch()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IsFirstTimeLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFirstTimeLaunch(Z)V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsFirstTimeLaunch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
