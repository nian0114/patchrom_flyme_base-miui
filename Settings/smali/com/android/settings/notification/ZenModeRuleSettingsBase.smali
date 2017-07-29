.class public abstract Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/settings_ex/widget/I;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected alf:Z

.field protected alm:Landroid/service/notification/ZenModeConfig$ZenRule;

.field private aln:Ljava/lang/String;

.field private alo:Z

.field private alp:Landroid/preference/Preference;

.field private alq:Lcom/android/settings_ex/DropDownPreference;

.field private alr:Landroid/widget/Toast;

.field protected mContext:Landroid/content/Context;

.field private me:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sN()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alo:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aln:Ljava/lang/String;

    return-object v0
.end method

.method private pX()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alf:Z

    .line 270
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sQ()V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sM()V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->o(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alf:Z

    .line 277
    return-void
.end method

.method private sN()V
    .locals 6

    .prologue
    .line 213
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$3;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aaj:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getAutomaticRuleNames()Landroid/util/ArraySet;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$3;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;Landroid/content/Context;Lcom/android/settings_ex/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$3;->show()V

    .line 223
    return-void
.end method

.method private sO()Z
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aaj:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aln:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 227
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->b(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sg()V

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sP()V
    .locals 5

    .prologue
    .line 236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a86

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a87

    new-instance v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private sQ()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alp:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method private sg()V
    .locals 3

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alo:Z

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0a98

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 261
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alf:Z

    if-eqz v0, :cond_2

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq p2, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xb0

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 159
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aaj:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->a(Landroid/service/notification/ZenModeConfig;)Z

    .line 163
    if-eqz p2, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sJ()I

    move-result v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alr:Landroid/widget/Toast;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alr:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alr:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alr:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method protected abstract b(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
.end method

.method protected d(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alm:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aaj:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->a(Landroid/service/notification/ZenModeConfig;)Z

    .line 181
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hp;

    .line 140
    invoke-virtual {v0}, Lcom/android/settings_ex/hp;->hF()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->a(Lcom/android/settings_ex/widget/I;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate getIntent()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    if-nez v0, :cond_2

    .line 82
    const-string v0, "ZenModeSettings"

    const-string v1, "No intent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sg()V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const-string v1, "rule_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aln:Ljava/lang/String;

    .line 88
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRuleId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->aln:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->setHasOptionsMenu(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sL()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 98
    const-string v1, "rule_name"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alp:Landroid/preference/Preference;

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alp:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const-string v1, "zen_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    const v1, 0x7f0c0a4f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    const v1, 0x7f0c0a50

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    const v1, 0x7f0c0a51

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    new-instance v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;-><init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->a(Lcom/android/settings_ex/cO;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->setOrder(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->alq:Lcom/android/settings_ex/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const v0, 0x7f14000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 199
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onDestroyView()V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->b(Lcom/android/settings_ex/widget/I;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f13030a

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xae

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sP()V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->pX()V

    .line 133
    return-void
.end method

.method protected sD()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected sE()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->sO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->pX()V

    .line 193
    :cond_0
    return-void
.end method

.method protected abstract sI()Ljava/lang/String;
.end method

.method protected abstract sJ()I
.end method

.method protected abstract sL()V
.end method

.method protected abstract sM()V
.end method
