.class public interface abstract Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;
.super Ljava/lang/Object;
.source "AppComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;,
        Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V
.end method

.method public abstract inject(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;)V
.end method
