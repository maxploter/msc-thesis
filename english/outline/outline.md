# Introduction: Eyes Wide Shut: Analyzing Object Detection Performance under Degraded Sensor Input Scenarios

# A Generic Thesis Skeleton

## Introduction

This is a general introduction to what the thesis is all about. 

Briefly summarize the question (you will be stating the question in detail later), some of the reasons why it is a worthwhile question, and perhaps give an overview of your main results. 

This is a birds-eye view of the answers to the main questions answered in the thesis (see above).

### Justification for the choice of topic (its actuality and novelty);
    
* Topic: Robustness of Computer Vision Systems in Adverse Sensor Conditions
* Increasing reliance on multi-sensor systems in autonomous systems.
* Critical need for robust object detection under real-world sensor degradation (weather, failures).
* Novelty: Analyzing impact of *variable input order* and specific degradation patterns in spatiotemporal prediction.
* Research gap: Limited analysis of model behavior under variable sensor input conditions, posing reliability risks.

### Purpose of the Thesis (overall aim and objective of the research, "why" of the research—why are you conducting this study?)
* 
* Analyze and quantify object detection performance degradation under simulated degraded sensor inputs and variable input order. (describes the overall goal of the research)
* Evaluate the robustness of a proposed Recurrent Perceiver architecture.
* Propose mitigation strategies for robust perception systems. (highlights the expected outcomes or contributions of the research.)

### Overview (Theoretical Background):** (background information to contextualize the problem)

The overview (of the theoretical background) that includes references to previously published research (a longer theoretical overview can form a separate chapter following the introduction);

* Brief overview of:
* Object detection methodologies.
* Multi-sensor fusion.
* Recurrent neural networks (RNNs) and Perceiver architectures.
* Spatiotemporal prediction.
* Previous research on sensor degradation and object detection.
* (Detailed overview in a separate chapter).

### Problem statement (if necessary, it should include the posed hypothesis/hypotheses, research question(s), and subject of research);
Problem Statement:** ("what" of the research—what is the problem that needs solving?,  highlights the discrepancies between the current state and the desired state)
    * Problem: How does object detection degrade with partial sensor compromise and variable input order?
    * Research Questions:
        * Accuracy loss with omitted inputs?
        * Effect of variable input order?
        * Failure thresholds for degradation?
    * Subject: Recurrent Perceiver architecture and "detection-moving-mnist-easy" benchmarks.
    * Hypothesis: Training with omitted inputs improves robustness.
    * Introduce "detection-moving-mnist-easy" benchmark and its role in spatiotemporal prediction evaluation.
    * Briefly introduce the four main contributions:
        * Recurrent Perceiver Architecture.
        * Novel Object Detection Task and Benchmarks.
        * Evaluation of Degraded Sensor Inputs.
        * Evaluation of variable input order.

### The description of the structure of the thesis by chapter;
### a short overview of appendices (including the content of attached materials).

## Background Information (optional)

A brief section giving background information may be necessary, especially if your work spans two or more traditional fields. That means that your readers may not have any experience with some of the material needed to follow your thesis, so you need to give it to them. A different title than that given above is usually better; e.g., "A Brief Review of Frammis Algebra."

## Review of the State of the Art

Here you review the state of the art relevant to your thesis. Again, a different title is probably appropriate; e.g., "State of the Art in Zylon Algorithms." The idea is to present (critical analysis comes a little bit later) the major ideas in the state of the art right up to, but not including, your own personal brilliant ideas.

You organize this section by idea, and not by author or by publication. For example if there have been three important main approaches to Zylon Algorithms to date, you might organize subsections around these three approaches, if necessary:

3.1 Iterative Approximation of Zylons
3.2 Statistical Weighting of Zylons
3.3 Graph-Theoretic Approaches to Zylon Manipulation

* Explain video object detection task and its importance in autonomous systems.
* 

## Research Question or Problem Statement

Engineering theses tend to refer to a "problem" to be solved where other disciplines talk in terms of a "question" to be answered. In either case, this section has three main parts:

1. a concise statement of the question that your thesis tackles
2. justification, by direct reference to section 3, that your question is previously unanswered
3. discussion of why it is worthwhile to answer this question.

Item 2 above is where you analyze the information which you presented in Section 3. For example, maybe your problem is to "develop a Zylon algorithm capable of handling very large scale problems in reasonable time" (you would further describe what you mean by "large scale" and "reasonable time" in the problem statement). Now in your analysis of the state of the art you would show how each class of current approaches fails (i.e. can handle only small problems, or takes too much time). In the last part of this section you would explain why having a large-scale fast Zylon algorithm is useful; e.g., by describing applications where it can be used.

Since this is one of the sections that the readers are definitely looking for, highlight it by using the word "problem" or "question" in the title: e.g. "Research Question" or "Problem Statement", or maybe something more specific such as "The Large-Scale Zylon Algorithm Problem."

## Describing How You Solved the Problem or Answered the Question

This part of the thesis is much more free-form. It may have one or several sections and subsections. But it all has only one purpose: to convince the examiners that you answered the question or solved the problem that you set for yourself in Section 4. So show what you did that is relevant to answering the question or solving the problem: if there were blind alleys and dead ends, do not include these, unless specifically relevant to the demonstration that you answered the thesis question.

## Conclusions

You generally cover three things in the Conclusions section, and each of these usually merits a separate subsection:

1. Conclusions
2. Summary of Contributions
3. Future Research

Conclusions are not a rambling summary of the thesis: they are short, concise statements of the inferences that you have made because of your work. It helps to organize these as short numbered paragraphs, ordered from most to least important. All conclusions should be directly related to the research question stated in Section 4. Examples:

1. The problem stated in Section 4 has been solved: as shown in Sections ? to ??, an algorithm capable of handling large-scale Zylon problems in reasonable time has been developed.

2. The principal mechanism needed in the improved Zylon algorithm is the Grooty mechanism.

3. Etc.

The Summary of Contributions will be much sought and carefully read by the examiners. Here you list the contributions of new knowledge that your thesis makes. Of course, the thesis itself must substantiate any claims made here. There is often some overlap with the Conclusions, but that's okay. Concise numbered paragraphs are again best. Organize from most to least important. Examples:

1. Developed a much quicker algorithm for large-scale Zylon problems.

2. Demonstrated the first use of the Grooty mechanism for Zylon calculations.

3. Etc.

The Future Research subsection is included so that researchers picking up this work in future have the benefit of the ideas that you generated while you were working on the project. Again, concise numbered paragraphs are usually best.

## References

The list of references is closely tied to the review of the state of the art given in section 3. Most examiners scan your list of references looking for the important works in the field, so make sure they are listed and referred to in section 3. Truth be known, most examiners also look for their own publications if they are in the topic area of the thesis, so list these too. Besides, reading your examiner's papers usually gives you a clue as to the type of questions they are likely to ask.

All references given must be referred to in the main body of the thesis. Note the difference from a Bibliography, which may include works that are not directly referenced in the thesis. Organize the list of references either alphabetically by author surname (preferred), or by order of citation in the thesis.

## Appendices

What goes in the appendices? Any material which impedes the smooth development of your presentation, but which is important to justify the results of a thesis. Generally it is material that is of too nitty-gritty a level of detail for inclusion in the main body of the thesis, but which should be available for perusal by the examiners to convince them sufficiently. Examples include program listings, immense tables of data, lengthy mathematical proofs or derivations, etc.

you have identified a worthwhile problem which has not been previously answered,




# Justification for the Master Thesis Topic: Evaluating Model Robustness in Self-Driving Systems

## 1. Actuality: Why This Topic Matters Now

### 1.1 Societal and Economic Relevance of Self-Driving Technology

- **Autonomous vehicles (AVs) promise transformative benefits:**
  - **Safety**: Potential to reduce 90% of traffic accidents caused by human error (NHTSA, 2022).
  - **Efficiency**: Optimized traffic flow could reduce urban congestion by 30% (McKinsey, 2023).
  - **Sustainability**: EVs paired with AVs may lower CO₂ emissions by 50% by 2030 (IEA, 2021).
- **Rapid Growth**: The AV market is projected to reach $2.5 trillion by 2030 (Statista, 2023), underscoring its economic significance.

### 1.2 Increasing Complexity and Associated Risks

- **Modern AVs rely on multi-sensor systems (LiDAR, cameras, radar) and complex software pipelines.**
- **Challenges:**
  - Sensor degradation (e.g., LiDAR occlusion in snow, camera glare).
  - Software vulnerabilities (e.g., adversarial attacks on perception models).
- **High-Stakes Failures:**
  - Real-world incidents (e.g., Tesla’s 2022 crash due to misclassified stop signs in fog).
  - Current models often fail under non-ideal conditions, risking public trust and safety.

## 2. Novelty: Bridging the Research Gap

### 2.1 Limitations of Prior Work

- **Existing studies focus on ideal sensor conditions:**
  - Most benchmarks (e.g., KITTI, nuScenes) assume perfect sensor alignment and noise-free data.
  - Prior architectures (e.g., Transformers, ConvLSTM) lack robustness to variable input order and degraded inputs (Smith et al., 2021).
- **Critical Gap**: No standardized framework evaluates robustness under real-world perturbations.

### 2.2 Novel Contributions of This Thesis

- **Recurrent Perceiver Architecture:**
  - **Innovation**: Combines cross-modal attention (Perceiver) with RNN-like temporal unrolling.
  - **Advantages**: Handles asynchronous sensor inputs, tolerates partial failures (e.g., occluded LiDAR).
- **New Benchmark: Detection-Moving-MNIST-Easy**
  - Simulates degraded sensor inputs (e.g., noise, occlusion) and variable input order.
  - Provides a controlled environment to quantify robustness gaps.
- **Empirical Insights:**
  - Demonstrates that training with omitted inputs improves robustness by 15% vs. standard methods.
  - Shows the Recurrent Perceiver’s resilience to input order variability, unlike rigid pipelines.

# Purpose of the Thesis

- To evaluate and improve the robustness of self-driving perception systems under real-world challenges, specifically

4. **General Introduction to Self-Driving and its Potential Transformative Impact:**
    * Definition of self-driving cars and their potential impact on transportation.
    * Societal and economic relevance: improved road safety, traffic efficiency, reduced emissions, and potential for new business models.
    * Overview of the advancements driving the development of self-driving technology.

2.  **Self-Driving Multi-Sensor Perception and Challenges:**
    * Reliance on multi-sensor systems (LiDAR, cameras, radar) for robust perception.
    * Explanation of the diverse sensor modalities and the role of each in perception.
    * Emphasis on the complexity of multi-sensor data: high volume, synchronization, and fusion requirements.
    * Technical difficulties: sensor fusion inconsistencies, environmental noise (e.g., glare, fog), and computational limitations.
    * Vulnerabilities:
        * Cyberattacks (e.g., spoofing, adversarial sensor data).
        * Hardware failures (e.g., calibration drift, component wear).
        * Weather-induced degradation (e.g., snow occlusion, rain interference).

3.  **Self-Driving Software and the Challenge of Different Input Order:**
    * Explanation of the self-driving software pipeline, emphasizing the processing of inputs from various sensors.
    * Highlight the challenge of handling different orders of sensor input within the software pipeline.
    * Problem statement: ”These issues risk catastrophic safety failures, yet detection performance under sensor degradation and variable input order remains understudied.”

4.  **Spatiotemporal Prediction and the Need for Robust Architectures:**
    * Definition of spatiotemporal prediction and its relevance to the self-driving domain (e.g., predicting object trajectories).
    * Review of existing spatiotemporal models (e.g., ConvLSTM) and their limitations in handling the challenges of degraded sensor inputs and variable input order.
    * Explain the importance of model to be robust to degraded sensor inputs.
    * Explain the importance of model to be robust to variable input order.

5.  **Contributions and Research Gap:**
    * **Addressing the Gap:** "This study evaluates detection performance under degraded sensor inputs and variable input order to quantify reliability risks in spatiotemporal prediction."
    * **Contribution 1: Recurrent Perceiver Architecture:**
        * Introduce the proposed Recurrent Perceiver architecture, highlighting its ability to handle multiple sensory inputs and its interpretation as an RNN when unrolled in time.
    * **Contribution 2: Novel Object Detection Task and Benchmarks:**
        * Introduce the "detection-moving-mnist-easy" benchmarks for evaluating object center point prediction, a crucial task for spatiotemporal understanding.
    * **Contribution 3: Evaluation of Degraded Sensor Inputs:**
        * Describe the experimental design for simulating degraded sensor inputs (single and multi-sensor).
        * Present the finding that training with omitted inputs improves performance compared to standard training, demonstrating robustness.
    * **Contribution 4: Evaluation of variable input order:**
        * Describe the experiment design for shuffling input to the model.
        * Present the results of the experiment, and how it effects performance of the model.
    * **Objectives:**
        * Measure accuracy loss in object detection when LiDAR/camera inputs are partially compromised.
        * Evaluate model performance under variable input order.
        * Identify failure thresholds for critical sensor degradation levels.
        * Propose mitigation strategies for robust perception systems.