# awesome-safety-tools

網路安全開放工具清單

本清單受到 [Awesome Redteaming](https://github.com/yeyintminthuhtut/Awesome-Red-Teaming/) 與 [Awesome Phishing](https://github.com/PhishyAlice/awesome-phishing) 等先前工作啟發。收錄不代表推薦，目的是整理並描繪目前可取得的技術。❤️

歡迎建立 pull request，協助加入更多資源與工具。

> **繁中版使用提醒**
> 本頁是依特定英文來源 commit 製作的非官方翻譯。工具的維護狀態、授權、資料處理方式、語言涵蓋率與使用條件可能變動，採用前請回到各工具的官方來源核對。收錄於本清單不代表 ROOST、翻譯者或維護者對工具的安全性、效能或適用性背書。

## 雜湊比對

* [Altitude by Jigsaw](https://github.com/jigsaw-code/altitude)
  * 提供網頁介面，並可對暴力極端主義與恐怖主義內容進行雜湊比對
* [Hasher Matcher Action (HMA) by Meta](https://github.com/facebook/ThreatExchange/tree/main/hasher-matcher-actioner)
  * 提供雜湊演算法、比對功能，以及串接後續動作的能力
* [Hasher-Matcher-Actioner (CLIP demo)](https://github.com/juanmrad/HMA-CLIP-demo)
  * 使用 CLIP 的 HMA 擴充參考實作，可供加入其他格式擴充時參考
* [hma-matrix by the Matrix.org Foundation](https://github.com/matrix-org/hma-matrix)
  * 主要為 Matrix 生態系提供 HMA 的 Matrix 特定擴充
* [Lattice Extract by Adobe](https://github.com/adobe/lattice_extract)
  * 偵測網格與格狀結構，降低雜湊比對的誤判
* [MediaModeration (Wiki Extension)](https://github.com/wikimedia/mediawiki-extensions-MediaModeration?tab=readme-ov-file)
  * 為 Wikimedia 提供兒少性虐待素材（CSAM）雜湊比對
* [PDQ by Meta](https://github.com/facebook/ThreatExchange/tree/main/pdq)
  * 圖片感知雜湊演算法
* [Perception by Thorn](https://github.com/thorn-oss/perception)
  * 為既有且常用的感知雜湊提供共同包裝介面，例如 ImageHash 所實作的雜湊
* [RocketChat CSAM](https://github.com/prostasia/rocketchatcsam)
  * 為 RocketChat 提供 CSAM 雜湊比對
* [TMK by Meta](https://github.com/facebook/ThreatExchange/tree/main/tmk)
  * 影片視覺相似度比對
* [VPDQ by Meta](https://github.com/facebook/ThreatExchange/tree/main/vpdq)
  * 使用 PDQ 演算法進行影片視覺相似度比對


## 分類

* [Content Safety API by Google](https://protectingchildren.google/tools-for-partners/#learn-about-our-tools)
  * 使用機器學習偵測圖片與影片中新出現的 CSAM、裸露與露骨性內容
  * 服務免費，但需要註冊
  * 本身並非開放原始碼，但可透過開放原始碼的 [Coop 使用](https://roostorg.github.io/coop/SIGNALS.html#content-safety-api-by-google)
* [CoPE by Zentropi](https://huggingface.co/zentropi-ai/cope-a-9b)
  * 小型語言模型，可依開發者定義的內容政策，進行準確、快速且可控制的內容分類
* [Detoxify by Unitary AI](https://github.com/unitaryai/detoxify)
  * 偵測並減輕文字中的一般性有害語言，包括仇恨言論、騷擾與霸凌
* [gpt-oss-safeguard by OpenAI](https://github.com/openai/gpt-oss-safeguard)
  * 開放權重推理模型，可依提供的安全政策分類文字內容
* [NSFW Keras Model](https://github.com/GantMan/nsfw_model)
  * 以卷積神經網路（CNN）為基礎的露骨圖片機器學習模型
* [NSFW Filtering](https://github.com/nsfw-filter/nsfw-filter)
  * 阻擋網路平台露骨圖片的瀏覽器擴充功能，面向一般使用者
* [OSmod by Jigsaw](https://github.com/conversationai/conversationai-moderator)
  * 供平台進行內容治理的機器學習工具、模型與 API 工具組
* [Perspective API by Jigsaw](https://github.com/conversationai/perspectiveapi)
  * 以機器學習協助平台偵測及評估線上對話毒性的工具
* [Private Detector by Bumble](https://github.com/bumble-tech/private-detector)
  * 用於偵測猥褻圖片的預訓練模型
* [Roblox Voice Safety Classifier](https://github.com/Roblox/voice-safety-classifier)
  * 機器學習模型，可即時偵測及治理 Roblox 語音聊天中的有害內容，著重口語偵測
* [Sentinel by Roblox](https://github.com/Roblox/Sentinel/tree/main)
  * 專為使用對比學習原理，即時偵測極罕見文字類別而設計的 Python 函式庫
* [Toxic Prompt RoBERTa by Intel](https://huggingface.co/Intel/toxic-prompt-roberta)
  * 以 BERT 為基礎，偵測提供給語言模型之提示詞中有害內容的模型


## 用於安全工作的 AI

* [Guardrails AI](https://github.com/guardrails-ai/guardrails)
  * Python 框架，透過檢查輸入與輸出是否具有預先定義的風險，協助建立較安全的 AI 應用程式
* [Kanana Safeguard By Kakao](https://huggingface.co/kakaocorp/kanana-safeguard-8b)
  * 以 Kanana 8B 為基礎的有害內容偵測模型
* [Granite Guardian by IBM Research](https://github.com/ibm-granite/granite-guardian)
  * 輸入與輸出的防護模型，可偵測多種使用情境中的傷害，包括一般傷害、RAG 情境與 agent 工作流程等
* [Llama Guard by Meta](https://github.com/meta-llama/PurpleLlama/tree/main/Llama-Guard3)
  * 以 AI 偵測文字互動中傷害的內容治理模型
* [Llama Prompt Guard 2 by Meta](https://github.com/meta-llama/PurpleLlama/blob/main/Llama-Prompt-Guard-2/86M/MODEL_CARD.md)
  * 偵測大型語言模型輸入中的提示詞注入與越獄攻擊
* [OpenGuardrails](https://github.com/openguardrails/openguardrails)
  * 安全閘道，為 OpenAI API 提供透明反向代理與整合式安全保護
* [Purple Llama by Meta](https://github.com/meta-llama/PurpleLlama/tree/main/Llama-Guard3)
  * 評估並改善大型語言模型安全性的工具組，包括 Llama Guard、CyberSec Eval 與 Code Shield
* [RoGuard](https://github.com/Roblox/RoGuard-1.0)
  * 協助保護 Roblox 大量文字生成內容的大型語言模型
* [ShieldGemma by Google DeepMind](https://www.kaggle.com/code/fernandosr85/shieldgemma-web-content-safety-analyzer?scriptVersionId=198456916)
  * Google DeepMind 的 AI 安全工具組，用來協助偵測及減輕大型語言模型應用程式中的有害或不安全輸出
* [Risk Atlas Nexus by IBM Research](https://github.com/IBM/risk-atlas-nexus)
  * 知識圖譜工具組，將多套 AI 風險分類，包括 IBM AI Risk Atlas、IBM Granite Guardian、MIT AI Risk Repository、NIST AI RMF GenAI Profile、AIR 2024、AILuminate Benchmark、Credo Unified Control Framework 與 OWASP Top 10 for LLM Apps，對應至評估、減輕措施與控制項，支援建立結構化治理工作流程



## 隱私保護

* [Fawkes Facial De-Recognition Cloaking](https://github.com/Shawn-Shan/fawkes)
  * 提供程式碼與執行檔，在 AI 嘗試將身分與照片比對時造成干擾，例如 [Clearview](https://www.theverge.com/23919134/kashmir-hill-your-face-belongs-to-us-clearview-ai-facial-recognition-privacy-decoder)
  * MIT 研究者在 github.com/Shawn-Shan 還提供許多其他工具
* [Presidio by Microsoft](https://github.com/microsoft/presidio)
  * 偵測圖片與文字中個人可識別資訊（PII）及其他敏感資料的工具組


## 核心基礎設施

* [AbuseIO](https://github.com/AbuseIO/AbuseIO)
  * 濫用事件管理平台，協助組織處理及追蹤與網路內容、基礎設施或服務有關的濫用申訴
* [Access by Discord](https://github.com/discord/access)
  * 管理組織內部系統存取權的集中式入口網站
* [Mjolnir by Matrix](https://github.com/matrix-org/mjolnir)
  * Matrix 協定的內容治理機器人，可自動執行內容政策
* [Open Truss by GitHub](https://github.com/open-truss/open-truss)
  * 協助使用者在不撰寫程式碼的情況下建立內部工具的框架


## 紅隊測試工具

* [Aymara](https://github.com/aymara-ai/aymara-sdk-python)
  * 用於 AI 安全性、準確度與越獄弱點的自動化評估工具
* [Counterfit by Microsoft](https://github.com/Azure/counterfit/)
  * 自動化評估 AI 模型安全性與強韌性的工具
* [Garak by NVIDIA](https://github.com/NVIDIA/garak)
  * 對抗性測試與模型評估框架
* [LLM Canary](https://github.com/LLM-Canary/LLM-Canary)
  * 評估模型安全漏洞與對抗性強韌性的 AI 基準測試工具
* [Prompt Fuzzer](https://github.com/prompt-security/ps-fuzz)
  * 測試 AI 系統提示詞注入弱點的工具
* [Promptfoo](https://github.com/promptfoo/promptfoo)
  * 大型語言模型自動化評估與報告產生工具，並提供多種可直接使用的攻擊策略
* [PyRIT by Microsoft](https://github.com/Azure/PyRIT)
  * Microsoft 以 Python 建立的 AI 紅隊與安全測試工具
* [Socketteer](https://github.com/socketteer?tab=repositories)
  * 讓 AI 模型互相互動，以協助測試對話弱點


## 分群

* [bogofilter](https://bogofilter.sourceforge.io/)
  * 使用貝氏統計分析分類文字的垃圾訊息過濾器，可從分類與更正中學習
* [scikit-learn](https://github.com/scikit-learn/scikit-learn)
  * Python 函式庫，提供 K-Means、DBSCAN 與階層式分群等多種演算法
* [SpamAssassin by Apache](https://spamassassin.apache.org)
  * 反垃圾郵件平台，使用文字分析、貝氏過濾與 DNS 封鎖清單等多種技術，分類並阻擋未經請求的電子郵件


## 規則引擎

* [Druid by Apache](https://github.com/apache/druid)
  * 高效能即時分析資料庫
* [Marble](https://github.com/checkmarble/marble)
  * 為金融科技公司與金融機構設計的即時詐欺偵測及法令遵循引擎
* [Osprey by ROOST](https://github.com/roostorg/osprey)
  * 為信任與安全及反濫用工作設計，可大規模即時處理事件的高效能規則引擎
* [RulesEngine by Microsoft](https://microsoft.github.io/RulesEngine/)
  * .NET 語言家族的函式庫，可透過 JSON 將業務邏輯、規則與政策從系統中抽象化
* [SQRL (Smyte Query and Rules Language)](https://github.com/sqrl-lang/sqrl)
  * 用於事件串流的安全、有狀態語言，專案自 2023 年起停止活動
* [Wikimedia Smite Spam](https://github.com/wikimedia/mediawiki-extensions-SmiteSpam)
  * MediaWiki 擴充功能，協助辨識及管理 Wiki 上的垃圾內容


## 審查

* [BullMQ](https://github.com/taskforcesh/bullmq)
  * 以 Redis 為基礎，供 NodeJS 與 Python 使用的訊息佇列與批次處理工具
* [Content Review Filters by Meta](https://github.com/facebook/content-review-filters)
  * 可將內容篩選器整合至審查工具的一組 React 元件
* [NCMEC Reporting by ello](https://github.com/ello/ncmec_reporting)
  * Ruby 用戶端函式庫，用於向美國國家失蹤與受虐兒童中心（NCMEC）CyberTipline 通報事件
* [Owlculus](https://github.com/be0vlk/owlculus)
  * 開放來源情報（OSINT）工具組與案件管理平台
* [RabbitMQ](https://github.com/rabbitmq)
  * 訊息代理程式，讓應用程式透過佇列傳送訊息並互相通訊


## 調查

* [CIB MangoTree](https://github.com/CIB-Mango-Tree/CIB-Mango-Tree-Website)
  * 協助研究者分析協同性不實行為（CIB）的工具集
* [Crossover](https://crossover.social/)
  * 開放原始碼專案，建立監測及分析社群網路推薦演算法的資訊儀表板，著重不實資訊與選舉監測
* [DAU Dashboard by Tattle](https://github.com/tattle-made/dau-dashboard)
  * Deepfake Analysis Unit（DAU）是協作分析深偽內容的空間
* [Feluda by Tattle](https://github.com/tattle-made/feluda)
  * 可設定的多語言、多模態內容分析引擎
* [Interference by Digital Forensics Research Lab](https://github.com/DFRLab/interference2024)
  * 互動式開放原始碼資料庫，追蹤與 2024 年美國總統大選有關的外國干預或外國惡意影響指控
* [OpenMeasures](https://gitlab.com/openmeasures)
  * 用於調查網路趨勢的開放原始碼平台
* [ThreatExchange by Meta](https://github.com/facebook/ThreatExchange)
  * 讓組織以結構化且符合隱私要求的方式，共享惡意軟體、網路釣魚攻擊與網路安全傷害等威脅資訊的平台
* [ThreatExchange Client via PHP](https://github.com/certly/threatexchange)
  * ThreatExchange 的 PHP 用戶端
* [ThreatExchange via Python](https://github.com/facebook/ThreatExchange/tree/main/python-threatexchange)
  * ThreatExchange 的 Python 函式庫
* [TikTok Observatory](https://github.com/aiforensics/tkobservatory)
  * 由 [AI Forensics](https://aiforensics.org/) 維護的開放原始碼專案，讓研究者監測 TikTok 推薦演算法如何提升或降低內容曝光


## 資料集

* [Aegis Content Safety by NVIDIA](https://huggingface.co/datasets/nvidia/Aegis-AI-Content-Safety-Dataset-2.0)
  * NVIDIA 建立的資料集，用來協助內容治理與毒性偵測
* [badwords by Richard Hughes](https://github.com/hughsie/badwords)
  * 不同語系的簡易不雅字詞清單，可用來標記可疑的使用者提交內容
* [PKU-SafeRLHF dataset](https://huggingface.co/datasets/PKU-Alignment/PKU-SafeRLHF)
  * 含有 RLHF 標記的提示詞，涵蓋多種傷害類別中的不安全回應
* [Toxic Chat by LMSYS](https://huggingface.co/datasets/lmsys/toxic-chat)
  * 從與 Vicuna 互動中收集的有害對話資料集
* [Toxicity by Jigsaw](https://huggingface.co/datasets/google/jigsaw_toxicity_pred)
  * 大量 Wikipedia 留言，由人工評分者標記有害行為
* [Transphobia Awareness dataset](https://doi.org/10.5281/zenodo.15482694)
  * 與跨性別恐懼有關的使用者查詢，包含人工標註及取自 Quora 問題的模型回應
* [Uli Dataset by Tattle](https://github.com/tattle-made/uli_dataset)
  * 為 Uli 機器學習遮蔽功能建立的性別化辱罵資料集
* [VTC by Unitary AI](https://github.com/unitaryai/VTC)
  * 影片與文字檢索的實作，包含帶留言的資料集、辨識可補充影片脈絡之相關輔助資訊的方法，以及量化留言模態為影片帶來價值的方式


## 紅隊測試資料集

* [AI Alignment Dataset by Anthropic](https://atlas.nomic.ai/map/anthropic_rlhf)
  * 用於人類回饋強化學習（RLHF）的資料，以使 AI 模型符合預期目標
* [AILuminate dataset by MLCommons](https://github.com/mlcommons/ailuminate)
  * 人工建立、涵蓋不同傷害類別的提示詞
* [Aya Red-teaming dataset by Cohere](https://huggingface.co/datasets/CohereForAI/aya_redteaming)
  * 涵蓋多種傷害類別的多語言紅隊測試提示詞
* [ALERT dataset by Babelscape](https://huggingface.co/datasets/Babelscape/ALERT)
  * 標準與對抗性紅隊測試提示詞
* [CCP Sensitive Prompts by Promptfoo](https://huggingface.co/datasets/promptfoo/CCP-sensitive-prompts)
  * 涵蓋中國共產黨（CCP）敏感主題的提示詞
* [DarkBench by Apart](https://huggingface.co/datasets/apart/darkbench)
  * 偵測大型語言模型黑暗設計模式的綜合基準測試
* [DEFCOM Red Teaming Dataset](https://github.com/humane-intelligence/ai_village_defcon_grt_data)
  * 取自 DEF CON AI 紅隊測試活動的資料集
* [Do Not Answer dataset](https://huggingface.co/datasets/LibrAI/do-not-answer)
  * 涵蓋多種風險領域與傷害類型的問題，用來測試大型語言模型的安全與拒答行為
* [Forbidden Questions dataset](https://huggingface.co/datasets/TrustAIRLab/forbidden_question_set)
  * 取自 OpenAI 使用政策的問題
* [HackAPrompt Jailbreak Dataset](https://huggingface.co/datasets/hackaprompt/hackaprompt-dataset/viewer/default/train?p=1&row=137)
  * 測試 AI 對提示詞越獄攻擊弱點的資料集
* [HarmBench by Center for AI Safety](https://github.com/centerforaisafety/HarmBench)
  * 用於自動化紅隊測試的評估資料集
* [HiroKachi Jailbreak Dataset](https://sizu.me/love)
  * 著重對抗性 AI 提示詞攻擊的資料集
* [Jailbreak Prompt Generator AI Model](https://huggingface.co/tsq2000/Jailbreak-generator)
  * 產生越獄式提示詞的 AI 模型
* [JailbreakBench](https://huggingface.co/datasets/JailbreakBench/JBB-Behaviors)
  * 評估越獄行為的有害行為資料集
* [JailbreakHub by WalledAI](https://huggingface.co/datasets/walledai/JailbreakHub)
  * 越獄提示詞與對應模型回應的集合
* [LLM-LAT harmful dataset](https://huggingface.co/datasets/LLM-LAT/harmful-dataset)
  * 評估大型語言模型有害行為的提示詞
* [MedSafetyBench](https://github.com/AI4LIFE-GROUP/med-safety-bench)
  * 評估大型語言模型醫療安全性的提示詞
* [Multilingual Vulnerability dataset](https://github.com/CarsonDon/Multilingual-Vuln-LLMs)
  * 展示大型語言模型弱點的多語言提示詞
* [Red Team Resistance Leaderboard](https://huggingface.co/spaces/HaizeLabs/red-teaming-resistance-benchmark)
  * 依模型抵抗對抗性攻擊的能力進行排名
* [Rentry Jailbreak Datasets](https://rentry.org/gpt0721)
  * 與越獄嘗試有關的資料集集合
* [SidFeel Jailbreak Dataset](https://github.com/sidfeels/PromptsDB)
  * 用於越獄的大量提示詞
* [SorryBench](https://huggingface.co/datasets/sorry-bench/sorry-bench-202503)
  * 使用語言變異測試大型語言模型安全性的對抗性提示詞
* [SOSBench](https://huggingface.co/datasets/SOSBench/SOSBench)
  * 以法規為依據、著重危害的基準測試，涵蓋化學、生物、醫學、藥理、物理與心理學六個高風險科學領域，包含 3,000 個取自真實法規與法律的提示詞
* [TDC23-RedTeaming dataset by walledai](https://huggingface.co/datasets/walledai/TDC23-RedTeaming)
  * TDC23 紅隊測試賽道的提示詞集合
* [XSTest dataset](https://github.com/paul-rottger/exaggerated-safety)
  * 測試大型語言模型過度安全行為的提示詞


## 去中心化平台

* [Automod by Bluesky](https://github.com/bluesky-social/indigo/tree/main/automod)
  * 為 Bluesky 社群網路及其他 AT Protocol 應用程式自動執行內容治理流程的工具
* [FediCheck](https://connect.iftas.org/library/iftas-documentation/fedicheck/)
  * 協助 Mastodon 伺服器等 ActivityPub 服務提供者進行網域治理的工具，現已開放原始碼
* [Fediverse Spam Filtering](https://github.com/MarcT0K/Fediverse-Spam-Filtering/)
  * 聯邦宇宙社群平台的垃圾訊息過濾器，目前版本仍只是概念驗證
* [FIRES](https://github.com/fedimod/fires)
  * 交換內容治理警示與建議的參考伺服器及協定
* [Ozone by Bluesky](https://github.com/bluesky-social/ozone)
  * 為 Bluesky 設計的標記工具，包含針對濫用標記採取行動、執行政策與調查等內容治理功能


## 使用者安全工具

* [Frankly by Applied Social Media Lab](https://github.com/berkmancenter/frankly/)
  * 線上審議平台，讓任何人都能主持支援視訊、主題不限的對話
* [PolicyKit by UW Social Futures Lab](https://github.com/policykit/policykit)
  * 在網路社群中建立治理機制的工具組
* [SquadBox by UW Social Futures Lab](https://github.com/amyxzhang/squadbox)
  * 讓遭受網路騷擾者的朋友或「小隊」協助審查訊息的工具
* [Uli by Tattle](https://github.com/tattle-made/Uli)
  * 用於減輕印度網路性別暴力的軟體與資源

### 授權與來源

本繁中版本改作自 [ROOST awesome-safety-tools 英文清單](https://github.com/roostorg/awesome-safety-tools/tree/3f3883115dc043eb875e77b5f5511a371e4d3f13)，依 [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/) 授權提供。繁中翻譯與用語調整由 `open-safety-tw/awesome-safety-tools` fork 的貢獻者完成，審查狀態見 [`localization/zh-Hant-TW/sources.tsv`](localization/zh-Hant-TW/sources.tsv)。若譯文與來源版本不一致，請以該 commit 的英文內容為準。
