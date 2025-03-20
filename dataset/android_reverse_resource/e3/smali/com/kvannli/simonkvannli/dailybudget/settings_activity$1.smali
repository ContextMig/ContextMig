.class Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;
.super Ljava/lang/Object;
.source "settings_activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->onAClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x41c6da5607d9bf86L    # 7.668152477011573E8

    const-string v2, "com/kvannli/simonkvannli/dailybudget/settings_activity$1"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/settings_activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

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
    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-boolean v5, v0, v5

    .line 61
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currency sign: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 63
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    iget-object v2, v2, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v5, v0, v3

    .line 64
    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    const v4, 0x7f07005e

    invoke-virtual {v3, v4}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, p2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x4

    aput-boolean v5, v0, v3

    .line 65
    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    const v4, 0x7f07005d

    invoke-virtual {v3, v4}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    aget-object v1, v1, p2

    invoke-virtual {v4, v1}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->setDesimalBasedOnSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 66
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 67
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->updateValues()V

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    return-void
.end method
