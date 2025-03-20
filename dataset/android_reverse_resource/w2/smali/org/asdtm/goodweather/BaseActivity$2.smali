.class Lorg/asdtm/goodweather/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/BaseActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/BaseActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5aba4842c6efc052L    # 1.138625790251089E129

    const-string v2, "org/asdtm/goodweather/BaseActivity$2"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BaseActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/BaseActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    aput-boolean v6, v0, v6

    .line 137
    :goto_0
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/BaseActivity;->access$000(Lorg/asdtm/goodweather/BaseActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 138
    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    return v6

    .line 105
    :pswitch_1
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const-class v4, Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const-class v4, Lorg/asdtm/goodweather/GraphsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lorg/asdtm/goodweather/BaseActivity;->access$100(Lorg/asdtm/goodweather/BaseActivity;Landroid/content/Intent;)V

    .line 110
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const-class v4, Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lorg/asdtm/goodweather/BaseActivity;->access$100(Lorg/asdtm/goodweather/BaseActivity;Landroid/content/Intent;)V

    .line 114
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 116
    :pswitch_4
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const-class v4, Lorg/asdtm/goodweather/SettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lorg/asdtm/goodweather/BaseActivity;->access$100(Lorg/asdtm/goodweather/BaseActivity;Landroid/content/Intent;)V

    .line 118
    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 120
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 121
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const/4 v5, 0x7

    aput-boolean v6, v0, v5

    .line 123
    invoke-virtual {v4}, Lorg/asdtm/goodweather/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x8

    aput-boolean v6, v0, v4

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x9

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v0, v2

    .line 125
    iget-object v2, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const-string v3, "Send feedback"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/asdtm/goodweather/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v1

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 127
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    const-string v2, "Communication app not found"

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v6, v0, v2

    .line 128
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 130
    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 132
    :pswitch_6
    invoke-static {}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->newInstance()Lorg/asdtm/goodweather/BitcoinDonationDialog;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v6, v0, v2

    .line 133
    iget-object v2, p0, Lorg/asdtm/goodweather/BaseActivity$2;->this$0:Lorg/asdtm/goodweather/BaseActivity;

    invoke-virtual {v2}, Lorg/asdtm/goodweather/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "bitcoinDonationDialog"

    invoke-virtual {v1, v2, v3}, Lorg/asdtm/goodweather/BitcoinDonationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0104
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
